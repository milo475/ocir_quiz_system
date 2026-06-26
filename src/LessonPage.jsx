import { useState, useEffect } from "react";
import { motion } from "framer-motion";
import { ArrowLeft } from "lucide-react";
import { supabase } from "./supabaseClient";

const ACCENT = "#5E0ED7";

const LESSONS = ["HTML", "CSS", "Python", "JavaScript", "Java", "React", "Django"];

export default function LessonPage({ onBack }) {
  const [selected, setSelected] = useState(null);
  const [content, setContent] = useState([]);
  const [loading, setLoading] = useState(false);

  useEffect(() => {
    if (!selected) return;
    setLoading(true);
    supabase
      .from("lessons")
      .select("*")
      .eq("subject", selected)
      .then(({ data }) => {
        setContent(data || []);
        setLoading(false);
      });
  }, [selected]);

  if (selected) {
    return (
      <section className="min-h-screen bg-white py-16 px-5 sm:px-8 md:px-12">
        <button onClick={() => setSelected(null)} className="flex items-center gap-2 mb-8 text-sm font-semibold uppercase tracking-widest hover:opacity-70">
          <ArrowLeft size={18} /> Буцах
        </button>
        <h2 className="text-3xl sm:text-4xl font-semibold mb-8" style={{ color: ACCENT }}>{selected} хичээлүүд</h2>
        {loading ? (
          <p className="text-gray-500">Уншиж байна...</p>
        ) : content.length === 0 ? (
          <p className="text-gray-500">Хичээл олдсонгүй.</p>
        ) : (
          <div className="flex flex-col gap-6 max-w-4xl mx-auto">
            {content.map((lesson) => (
              <div key={lesson.id} className="border border-gray-200 rounded-xl p-4 sm:p-6">
                <h3 className="text-lg sm:text-xl font-semibold mb-3">{lesson.title}</h3>
                <div className="text-gray-700 whitespace-pre-wrap break-words text-sm sm:text-base leading-relaxed">{lesson.content}</div>
              </div>
            ))}
          </div>
        )}
      </section>
    );
  }

  return (
    <section className="min-h-screen bg-white py-16 px-5 sm:px-8 md:px-12">
      <button onClick={onBack} className="flex items-center gap-2 mb-8 text-sm font-semibold uppercase tracking-widest hover:opacity-70">
        <ArrowLeft size={18} /> Буцах
      </button>

      <motion.h2
        className="text-4xl sm:text-5xl md:text-6xl font-semibold uppercase text-center mb-12"
        style={{ color: ACCENT }}
        initial={{ opacity: 0, y: -20 }}
        animate={{ opacity: 1, y: 0 }}
        transition={{ duration: 0.5 }}
      >
        Хичээл
      </motion.h2>

      <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6 max-w-6xl mx-auto">
        {LESSONS.map((name, i) => (
          <motion.div
            key={name}
            className="border border-gray-200 rounded-2xl p-6 flex flex-col justify-between hover:shadow-lg transition-shadow"
            initial={{ opacity: 0, y: 24 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ delay: i * 0.08, duration: 0.5 }}
          >
            <h3 className="text-2xl font-semibold mb-6" style={{ color: ACCENT }}>
              {name}
            </h3>
            <button
              onClick={() => setSelected(name)}
              className="w-full px-4 py-3 rounded-lg font-medium text-sm text-white tracking-wide transition-colors"
              style={{ backgroundColor: ACCENT }}
            >
              Хичээлийг унших
            </button>
          </motion.div>
        ))}
      </div>
    </section>
  );
}
