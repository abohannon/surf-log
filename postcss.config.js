module.exports = {
  plugins: [
    require("autoprefixer"),
    require("postcss-import"),
    require("postcss-extend"),
    require("tailwindcss")("./app/javascript/css/tailwind.js"),
    require("postcss-flexbugs-fixes"),
    require("postcss-preset-env")({
      autoprefixer: {
        flexbox: "no-2009"
      },
      stage: 3
    })
  ]
};
