import { useState, useEffect } from "react";
import { supabase } from "./supabaseClient";
import HeroSection from "./HeroSection";
import ExpertisePage from "./ExpertisePage";
import LessonPage from "./LessonPage";
import QuizPage from "./QuizPage";
import AuthPage from "./AuthPage";

export default function App() {
  const [page, setPage] = useState("home");
  const [quiz, setQuiz] = useState(null);
  const [user, setUser] = useState(() => {
    const saved = localStorage.getItem("user");
    return saved ? JSON.parse(saved) : null;
  });
  const [showAuth, setShowAuth] = useState(false);
  const [pendingQuiz, setPendingQuiz] = useState(null);

  useEffect(() => {
    supabase.auth.getSession().then(({ data }) => {
      if (data.session?.user) {
        setUser(data.session.user);
        localStorage.setItem("user", JSON.stringify(data.session.user));
      }
    });
    const { data: listener } = supabase.auth.onAuthStateChange((_event, session) => {
      if (session?.user) {
        setUser(session.user);
        localStorage.setItem("user", JSON.stringify(session.user));
      } else if (!localStorage.getItem("user")) {
        setUser(null);
      }
    });
    return () => listener.subscription.unsubscribe();
  }, []);

  const handleStartQuiz = (quizInfo) => {
    if (!user) {
      setPendingQuiz(quizInfo);
      setShowAuth(true);
      return;
    }
    setQuiz(quizInfo);
  };

  const handleAuth = (authedUser) => {
    setUser(authedUser);
    setShowAuth(false);
    if (pendingQuiz) {
      setQuiz(pendingQuiz);
      setPendingQuiz(null);
    }
  };

  const handleLogout = async () => {
    await supabase.auth.signOut();
    setUser(null);
  };

  if (showAuth) return <AuthPage onBack={() => { setShowAuth(false); setPendingQuiz(null); }} onAuth={handleAuth} />;
  if (quiz) return <QuizPage subject={quiz.subject} level={quiz.level} onBack={() => setQuiz(null)} />;
  if (page === "expertise") return <ExpertisePage onBack={() => setPage("home")} onStartQuiz={handleStartQuiz} />;
  if (page === "lesson") return <LessonPage onBack={() => setPage("home")} />;
  return <HeroSection onNavigate={setPage} user={user} onLogin={() => setShowAuth(true)} onLogout={handleLogout} />;
}
