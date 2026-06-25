import { useState } from "react";
import HeroSection from "./HeroSection";
import ExpertisePage from "./ExpertisePage";

export default function App() {
  const [page, setPage] = useState("home");

  if (page === "expertise") return <ExpertisePage onBack={() => setPage("home")} />;
  return <HeroSection onNavigate={setPage} />;
}
