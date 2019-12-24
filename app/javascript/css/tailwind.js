module.exports = {
  theme: {
    extend: {}
  },
  variants: {
    textColor: ["responsive", "focus", "visited", "hover"],
    backgroundColor: ["responsive", "hover", "focus", "active"],
    textDecoration: ["responsive", "hover", "focus", "active", "group-hover"]
  },
  plugins: [require("@tailwindcss/custom-forms")]
};
