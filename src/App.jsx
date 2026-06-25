import { useState } from "react";
import HeroSection from "./HeroSection";
import ExpertisePage from "./ExpertisePage";
import LessonPage from "./LessonPage";

export default function App() {
  const [page, setPage] = useState("home");

  if (page === "expertise") return <ExpertisePage onBack={() => setPage("home")} />;
  if (page === "lesson") return <LessonPage onBack={() => setPage("home")} />;
  return <HeroSection onNavigate={setPage} />;
}
