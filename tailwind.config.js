/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./cvs/*.liquid", "./_includes/*.liquid"],
  theme: {
    extend: {
      colors: {
        tahiti: {
          100: "hsl(199, 50%, 90%)",
          200: "hsl(199, 30%, 80%)",
          300: "hsl(199, 30%, 60%)",
          400: "hsl(199, 20%, 60%)",
          500: "hsl(199, 20%, 50%)",
          600: "hsl(199, 12%, 50%)",
          700: "hsl(199, 7%, 50%)",
          800: "hsl(199, 40%, 35%)",
          900: "hsl(199, 50%, 10%)",
          950: "hsl(199, 50%, 5%)",
        },
        "cv-dark": {
          500: "hsl(0, 0%, 48%)",
        },
      },
    },
  },
  plugins: [],
};
