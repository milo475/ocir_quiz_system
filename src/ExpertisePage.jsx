import { motion } from "framer-motion";
import { ArrowLeft } from "lucide-react";

const ACCENT = "#5E0ED7";

const TOPICS = [
  { name: "HTML", levels: ["Анхан шат", "Дунд шат", "Ахисан шат"] },
  { name: "CSS", levels: ["Анхан шат", "Дунд шат", "Ахисан шат"] },
  { name: "Python", levels: ["Анхан шат", "Дунд шат", "Ахисан шат"] },
  { name: "JavaScript", levels: ["Анхан шат", "Дунд шат", "Ахисан шат"] },
  { name: "Java", levels: ["Анхан шат", "Дунд шат", "Ахисан шат"] },
  { name: "React", levels: [] },
  { name: "Django", levels: [] },
];

export default function ExpertisePage({ onBack }) {
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
        Сэдэв
      </motion.h2>

      <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6 max-w-6xl mx-auto">
        {TOPICS.map((topic, i) => (
          <motion.div
            key={topic.name}
            className="border border-gray-200 rounded-2xl p-6 hover:shadow-lg transition-shadow"
            initial={{ opacity: 0, y: 24 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ delay: i * 0.08, duration: 0.5 }}
          >
            <h3 className="text-2xl font-semibold mb-4" style={{ color: ACCENT }}>
              {topic.name}
            </h3>
            {topic.levels.length > 0 ? (
              <div className="flex flex-col gap-2">
                {topic.levels.map((level) => (
                  <button
                    key={level}
                    className="w-full text-left px-4 py-3 rounded-lg bg-gray-50 hover:bg-purple-50 font-medium text-sm tracking-wide transition-colors border border-transparent hover:border-purple-200"
                  >
                    {topic.name} — {level}
                  </button>
                ))}
              </div>
            ) : (
              <button className="w-full text-left px-4 py-3 rounded-lg bg-gray-50 hover:bg-purple-50 font-medium text-sm tracking-wide transition-colors border border-transparent hover:border-purple-200">
                Шалгалт эхлэх
              </button>
            )}
          </motion.div>
        ))}
      </div>
    </section>
  );
}
