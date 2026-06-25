import { useState } from "react";
import { supabase } from "./supabaseClient";
import { ArrowLeft } from "lucide-react";

const ACCENT = "#5E0ED7";

export default function AuthPage({ onBack, onAuth }) {
  const [isLogin, setIsLogin] = useState(true);
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [error, setError] = useState("");
  const [loading, setLoading] = useState(false);

  const handleSubmit = async (e) => {
    e.preventDefault();
    setError("");
    setLoading(true);

    const { data, error: err } = isLogin
      ? await supabase.auth.signInWithPassword({ email, password })
      : await supabase.auth.signUp({ email, password });

    setLoading(false);
    if (err) {
      setError(err.message);
    } else if (data.user) {
      onAuth(data.user);
    }
  };

  return (
    <section className="min-h-screen bg-white flex flex-col items-center justify-center px-5">
      <div className="w-full max-w-sm">
        <button onClick={onBack} className="flex items-center gap-2 mb-8 text-sm font-semibold uppercase tracking-widest hover:opacity-70">
          <ArrowLeft size={18} /> Буцах
        </button>

        <h2 className="text-3xl font-semibold mb-8 text-center" style={{ color: ACCENT }}>
          {isLogin ? "Нэвтрэх" : "Бүртгүүлэх"}
        </h2>

        <form onSubmit={handleSubmit} className="flex flex-col gap-4">
          <input
            type="email"
            placeholder="Email"
            value={email}
            onChange={(e) => setEmail(e.target.value)}
            required
            className="px-4 py-3 border border-gray-200 rounded-lg text-sm focus:outline-none focus:border-purple-400"
          />
          <input
            type="password"
            placeholder="Нууц үг"
            value={password}
            onChange={(e) => setPassword(e.target.value)}
            required
            minLength={6}
            className="px-4 py-3 border border-gray-200 rounded-lg text-sm focus:outline-none focus:border-purple-400"
          />
          {error && <p className="text-red-500 text-sm">{error}</p>}
          <button
            type="submit"
            disabled={loading}
            className="px-4 py-3 rounded-lg text-white font-medium text-sm"
            style={{ backgroundColor: ACCENT }}
          >
            {loading ? "Түр хүлээнэ үү..." : isLogin ? "Нэвтрэх" : "Бүртгүүлэх"}
          </button>
        </form>

        <p className="text-sm text-center mt-6 text-gray-500">
          {isLogin ? "Бүртгэл байхгүй юу?" : "Бүртгэлтэй юу?"}{" "}
          <button onClick={() => setIsLogin(!isLogin)} className="font-semibold" style={{ color: ACCENT }}>
            {isLogin ? "Бүртгүүлэх" : "Нэвтрэх"}
          </button>
        </p>
      </div>
    </section>
  );
}
