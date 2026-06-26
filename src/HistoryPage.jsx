import { useState, useEffect } from "react";
import { motion } from "framer-motion";
import { ArrowLeft, ChevronDown, ChevronUp } from "lucide-react";
import { supabase } from "./supabaseClient";

const ACCENT = "#5E0ED7";
const LEVELS = ["Ахисан шат", "Дунд шат", "Анхан шат"];

export default function HistoryPage({ onBack, user }) {
  const [history, setHistory] = useState([]);
  const [expanded, setExpanded] = useState(null);

  useEffect(() => {
    const userId = user?.id || user?.email;
    if (!userId) return;
    supabase.from("quiz_history").select("*").eq("user_id", userId).order("taken_at", { ascending: false }).then(({ data }) => {
      setHistory(data || []);
    });
  }, [user]);

  const grouped = LEVELS.reduce((acc, level) => {
    acc[level] = history.filter(h => h.level === level);
    return acc;
  }, {});

  return (
    <section className="min-h-screen bg-white py-16 px-5 sm:px-8 md:px-12">
      <button onClick={onBack} className="flex items-center gap-2 mb-8 text-sm font-semibold uppercase tracking-widest hover:opacity-70">
        <ArrowLeft size={18} /> Буцах
      </button>

      <motion.h2
        className="text-3xl sm:text-4xl md:text-5xl font-semibold uppercase text-center mb-8 sm:mb-12"
        style={{ color: ACCENT }}
        initial={{ opacity: 0, y: -20 }}
        animate={{ opacity: 1, y: 0 }}
      >
        Шалгалтын түүх
      </motion.h2>

      <div className="max-w-3xl mx-auto flex flex-col gap-4 sm:gap-6">
        {LEVELS.map((level) => (
          <div key={level} className="border border-gray-200 rounded-xl sm:rounded-2xl overflow-hidden">
            <button
              onClick={() => setExpanded(expanded === level ? null : level)}
              className="w-full flex items-center justify-between px-4 sm:px-6 py-4 sm:py-5 bg-gray-50 hover:bg-purple-50 transition-colors"
            >
              <h3 className="text-lg sm:text-xl font-semibold" style={{ color: ACCENT }}>{level}</h3>
              <div className="flex items-center gap-3">
                <span className="text-sm text-gray-500">{grouped[level].length} шалгалт</span>
                {expanded === level ? <ChevronUp size={20} /> : <ChevronDown size={20} />}
              </div>
            </button>

            {expanded !== level && grouped[level].length > 0 && (
              <div className="px-4 sm:px-6 py-3 sm:py-4 flex flex-wrap gap-2 sm:gap-3">
                {grouped[level].map((h) => (
                  <span key={h.id} className="px-2.5 sm:px-3 py-1 sm:py-1.5 bg-gray-100 rounded-lg text-xs sm:text-sm font-medium">
                    {h.subject}: {h.score}/{h.total}
                  </span>
                ))}
              </div>
            )}

            {expanded === level && (
              <div className="px-4 sm:px-6 py-3 sm:py-4">
                {grouped[level].length === 0 ? (
                  <p className="text-gray-400 text-sm">Энэ түвшинд шалгалт өгөөгүй байна.</p>
                ) : (
                  <div className="flex flex-col gap-2 sm:gap-3">
                    {grouped[level].map((h) => (
                      <div key={h.id} className="flex items-center justify-between border border-gray-100 rounded-lg px-3 sm:px-4 py-2.5 sm:py-3">
                        <div className="min-w-0 flex-1">
                          <p className="font-medium text-sm sm:text-base truncate">{h.subject} — {h.level}</p>
                          <p className="text-xs text-gray-400">{new Date(h.taken_at).toLocaleString("mn-MN")}</p>
                        </div>
                        <div className="text-right ml-3">
                          <p className="text-base sm:text-lg font-bold" style={{ color: ACCENT }}>{h.score}/{h.total}</p>
                          <p className="text-xs text-gray-400">{Math.round((h.score / h.total) * 100)}%</p>
                        </div>
                      </div>
                    ))}
                  </div>
                )}
              </div>
            )}
          </div>
        ))}
      </div>
    </section>
  );
}
