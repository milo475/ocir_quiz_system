import { useState } from "react";
import HeroSection from "./HeroSection";
import ExpertisePage from "./ExpertisePage";
import LessonPage from "./LessonPage";
import QuizPage from "./QuizPage";

export default function App() {
  const [page, setPage] = useState("home");
  const [quiz, setQuiz] = useState(null);

  if (quiz) return <QuizPage subject={quiz.subject} level={quiz.level} onBack={() => setQuiz(null)} />;
  if (page === "expertise") return <ExpertisePage onBack={() => setPage("home")} onStartQuiz={setQuiz} />;
  if (page === "lesson") return <LessonPage onBack={() => setPage("home")} />;
  return <HeroSection onNavigate={setPage} />;
}
