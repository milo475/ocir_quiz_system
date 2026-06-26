import React, { useState, useEffect } from "react";
import { motion } from "framer-motion";
import { ArrowLeft } from "lucide-react";
import { supabase } from "./supabaseClient";

const ACCENT = "#5E0ED7";

export default function QuizPage({ subject, level, user, onBack }) {
  const [questions, setQuestions] = useState([]);
  const [current, setCurrent] = useState(0);
  const [selected, setSelected] = useState(null);
  const [score, setScore] = useState(0);
  const [finished, setFinished] = useState(false);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    supabase
      .from("quizzes")
      .select("*")
      .eq("subject", subject)
      .eq("level", level)
      .then(({ data }) => {
        const shuffled = (data || []).map(q => ({
          ...q,
          options: [...q.options].sort(() => Math.random() - 0.5)
        }));
        setQuestions(shuffled);
        setLoading(false);
      });
  }, [subject, level]);

  const scoreRef = React.useRef(0);

  const handleAnswer = (option) => {
    setSelected(option);
    if (option === questions[current].answer) {
      scoreRef.current += 1;
      setScore(scoreRef.current);
    }
    setTimeout(() => {
      if (current + 1 < questions.length) {
        setCurrent(current + 1);
        setSelected(null);
      } else {
        setFinished(true);
        const userId = user?.id || user?.email;
        supabase.from("quiz_history").insert({ subject, level, score: scoreRef.current, total: questions.length, user_id: userId }).then(() => {
          supabase.from("quiz_history").select("id").eq("user_id", userId).order("taken_at", { ascending: true }).then(({ data }) => {
            if (data && data.length > 10) {
              const toDelete = data.slice(0, data.length - 10).map(r => r.id);
              supabase.from("quiz_history").delete().in("id", toDelete);
            }
          });
        });
      }
    }, 800);
  };

  if (loading) return <p className="p-12 text-gray-500">Уншиж байна...</p>;

  if (questions.length === 0) {
    return (
      <section className="min-h-screen bg-white py-16 px-5 sm:px-8 md:px-12">
        <button onClick={onBack} className="flex items-center gap-2 mb-8 text-sm font-semibold uppercase tracking-widest hover:opacity-70">
          <ArrowLeft size={18} /> Буцах
        </button>
        <p className="text-gray-500 text-center text-lg">Энэ шатанд асуулт байхгүй байна.</p>
      </section>
    );
  }

  if (finished) {
    return (
      <section className="min-h-screen bg-white py-16 px-5 sm:px-8 md:px-12 flex flex-col items-center justify-center">
        <motion.div initial={{ scale: 0.8, opacity: 0 }} animate={{ scale: 1, opacity: 1 }} className="text-center">
          <h2 className="text-3xl sm:text-4xl font-semibold mb-4" style={{ color: ACCENT }}>Дүн</h2>
          <p className="text-5xl sm:text-6xl font-bold mb-2">{score}/{questions.length}</p>
          <p className="text-gray-500 mb-8">{Math.round((score / questions.length) * 100)}% зөв</p>
          <button onClick={onBack} className="px-6 py-3 rounded-lg text-white font-medium" style={{ backgroundColor: ACCENT }}>
            Буцах
          </button>
        </motion.div>
      </section>
    );
  }

  const q = questions[current];

  return (
    <section className="min-h-screen bg-white py-16 px-5 sm:px-8 md:px-12">
      <button onClick={onBack} className="flex items-center gap-2 mb-8 text-sm font-semibold uppercase tracking-widest hover:opacity-70">
        <ArrowLeft size={18} /> Буцах
      </button>

      <div className="max-w-2xl mx-auto">
        <p className="text-sm text-gray-400 mb-2">{subject} — {level}</p>
        <p className="text-sm text-gray-400 mb-6">Асуулт {current + 1}/{questions.length}</p>

        <motion.h3
          key={current}
          initial={{ opacity: 0, x: 20 }}
          animate={{ opacity: 1, x: 0 }}
          className="text-xl sm:text-2xl font-semibold mb-8"
        >
          {q.question}
        </motion.h3>

        <div className="flex flex-col gap-3">
          {q.options.map((option) => {
            let bg = "bg-gray-50 hover:bg-purple-50 border-transparent hover:border-purple-200";
            if (selected) {
              if (option === q.answer) bg = "bg-green-100 border-green-400";
              else if (option === selected) bg = "bg-red-100 border-red-400";
            }
            return (
              <button
                key={option}
                onClick={() => !selected && handleAnswer(option)}
                disabled={!!selected}
                className={`w-full text-left px-4 sm:px-5 py-3 sm:py-4 rounded-lg font-medium text-xs sm:text-sm border transition-colors break-words ${bg}`}
              >
                {option}
              </button>
            );
          })}
        </div>
      </div>
    </section>
  );
}
