import { useState, useEffect } from "react";
import { motion } from "framer-motion";
import { ArrowUpRight, X } from "lucide-react";
import { supabase } from "./supabaseClient";

const VIDEO_URL = "https://d8j0ntlcm91z4.cloudfront.net/user_38xzZboKViGWJOttwIXH07lWA1P/hf_20260517_222138_3e3205be-3364-417b-a64a-bfe087acbec4.mp4";
const ACCENT = "#5E0ED7";
const NAV_LINKS = ["Story", "Сэдэв", "Хичээл", "Feedback"];
const STATS_LABELS = ["НИЙТ\nСЭДЭВ", "НИЙТ\nХИЧЭЭЛ"];
const HEADING_WORDS = ["Ocir", "Quiz", "System"];
const ease = [0.22, 1, 0.36, 1];

const fadeDown = (i) => ({
  initial: { opacity: 0, y: -20 },
  animate: { opacity: 1, y: 0, transition: { delay: i * 0.1, duration: 0.5, ease } },
});

const fadeUp = (i) => ({
  initial: { opacity: 0, y: 32 },
  animate: { opacity: 1, y: 0, transition: { delay: i * 0.12, duration: 0.6, ease } },
});

const slideUp = (i) => ({
  initial: { y: "110%" },
  animate: { y: 0, transition: { delay: 0.4 + i * 0.14, duration: 0.7, ease } },
});

function Logo() {
  return (
    <div className="w-8 h-8 rounded-full border-2 flex items-center justify-center" style={{ borderColor: ACCENT }}>
      <div className="w-2.5 h-2.5 rounded-full" style={{ backgroundColor: ACCENT }} />
    </div>
  );
}

function MobileMenu({ onClose, onNavigate }) {
  return (
    <div className="fixed inset-0 z-50 bg-white flex flex-col px-5 sm:px-8 md:px-12 pt-5 md:pt-6 pb-8">
      <div className="flex items-center justify-between">
        <Logo />
        <button onClick={onClose} className="w-9 h-9 rounded-full bg-black flex items-center justify-center">
          <X size={18} color="white" />
        </button>
      </div>
      <nav className="flex flex-col gap-8 mt-16">
        {NAV_LINKS.map((link) => (
          <a key={link} href="#" onClick={() => { if (link === "Сэдэв") onNavigate("expertise"); if (link === "Хичээл") onNavigate("lesson"); }} className="text-3xl font-semibold tracking-widest uppercase text-black">{link}</a>
        ))}
      </nav>
      <div className="mt-auto">
        <a href="#" className="flex items-center gap-2 text-xl font-semibold tracking-widest uppercase" style={{ color: ACCENT }}>
          Work With Us <ArrowUpRight size={22} />
        </a>
      </div>
    </div>
  );
}

export default function HeroSection({ onNavigate, user, onLogin, onLogout }) {
  const [menuOpen, setMenuOpen] = useState(false);
  const [stats, setStats] = useState([0, 0]);

  useEffect(() => {
    Promise.all([
      supabase.from("quizzes").select("subject"),
      supabase.from("lessons").select("id", { count: "exact", head: true }),
    ]).then(([quizRes, lessonRes]) => {
      const subjects = new Set((quizRes.data || []).map(q => q.subject));
      setStats([subjects.size, lessonRes.count || 0]);
    });
  }, []);

  const handleNav = (link) => {
    if (link === "Сэдэв") onNavigate("expertise");
    if (link === "Хичээл") onNavigate("lesson");
  };

  return (
    <div className="relative min-h-screen flex flex-col font-inter overflow-x-hidden">
      <video className="absolute inset-0 w-full h-full object-cover" src={VIDEO_URL} autoPlay loop muted playsInline />

      <div className="relative z-10 flex flex-col min-h-screen">
        {/* Nav */}
        <nav className="flex items-center justify-between px-5 sm:px-8 md:px-12 pt-5 md:pt-6">
          <motion.div {...fadeDown(0)}><Logo /></motion.div>
          <div className="hidden md:flex items-center gap-8">
            {NAV_LINKS.map((link, i) => (
              <motion.a key={link} href="#" onClick={() => handleNav(link)} className="text-sm font-semibold tracking-widest uppercase text-black cursor-pointer" {...fadeDown(i + 1)}>{link}</motion.a>
            ))}
            {user ? (
              <motion.button onClick={onLogout} className="text-sm font-semibold tracking-widest uppercase text-black cursor-pointer" {...fadeDown(NAV_LINKS.length + 1)}>Гарах</motion.button>
            ) : (
              <motion.button onClick={onLogin} className="text-sm font-semibold tracking-widest uppercase cursor-pointer" style={{ color: ACCENT }} {...fadeDown(NAV_LINKS.length + 1)}>Нэвтрэх</motion.button>
            )}
          </div>
          <motion.button onClick={() => setMenuOpen(true)} className="w-9 h-9 rounded-full bg-black flex flex-col items-center justify-center gap-1 md:hidden" {...fadeDown(5)}>
            <span className="w-4 h-0.5 bg-white" />
            <span className="w-4 h-0.5 bg-white" />
            <span className="w-4 h-0.5 bg-white" />
          </motion.button>
        </nav>

        {/* Stats */}
        <div className="flex-1 flex items-center justify-end px-5 sm:px-8 md:px-12 py-8 md:py-0">
          <div className="flex gap-5 sm:gap-8 md:gap-10">
            {STATS_LABELS.map((label, i) => (
              <motion.div key={label} className="text-right" {...fadeUp(i + 2)}>
                <p style={{ fontSize: "clamp(1.5rem, 5vw, 3.5rem)" }} className="font-semibold leading-none">
                  <span style={{ color: ACCENT, fontSize: "0.5em" }}>+</span>
                  <span className="text-black">{stats[i]}</span>
                </p>
                <p className="text-[10px] sm:text-xs md:text-sm font-semibold tracking-widest uppercase text-black whitespace-pre-line leading-tight mt-1">{label}</p>
              </motion.div>
            ))}
          </div>
        </div>

        {/* Bottom */}
        <div className="px-5 sm:px-8 md:px-12 pb-8 md:pb-12 flex flex-col gap-6 md:gap-12">
          <div className="flex items-center justify-between gap-4">
            <motion.p className="text-[10px] sm:text-xs md:text-sm font-semibold tracking-widest uppercase text-black max-w-[130px] sm:max-w-[160px] md:max-w-xs" {...fadeUp(5)}>
              Мэдлэгээ шалгаж<br />чадвараа хөгжүүлж<br />ирээдүйгээ бүтээ
            </motion.p>
            <motion.a href="#" className="flex items-center gap-1 text-base sm:text-xl md:text-2xl font-semibold tracking-widest uppercase whitespace-nowrap" style={{ color: ACCENT }} {...fadeUp(6)}>
              Work With Us <ArrowUpRight className="w-[18px] h-[18px] sm:w-[22px] sm:h-[22px]" />
            </motion.a>
          </div>
          <div className="flex items-end justify-between gap-3 sm:gap-4">
            <motion.div className="w-[120px] sm:w-[180px] md:w-[280px] shrink-0" {...fadeUp(7)}>
              <p className="text-[9px] sm:text-xs md:text-sm font-semibold tracking-widest uppercase text-left md:text-right text-black">
                Өөрийгөө сорьж, алдаагаа олж, давтан суралцсанаар жинхэнэ ахиц дэвшил гарна
              </p>
            </motion.div>
            <div className="text-right">
              {HEADING_WORDS.map((word, i) => (
                <div key={word} className="overflow-hidden">
                  <motion.h1 className="font-semibold uppercase text-black text-right" style={{ fontSize: "clamp(2rem, 9vw, 9rem)", lineHeight: 0.88 }} {...slideUp(i)}>{word}</motion.h1>
                </div>
              ))}
            </div>
          </div>
        </div>
      </div>

      {menuOpen && <MobileMenu onClose={() => setMenuOpen(false)} onNavigate={onNavigate} />}
    </div>
  );
}
