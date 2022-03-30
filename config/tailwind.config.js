const defaultTheme = require('tailwindcss/defaultTheme');

module.exports = {
  content: ['./app/helpers/**/*.rb', './app/javascript/**/*.js', './app/views/**/*.{erb,haml,html,slim}'],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Inter var', ...defaultTheme.fontFamily.sans],
        body: ['Raleway', ...defaultTheme.fontFamily.sans],
      },
      colors: {
        'snap-main': '#3778c2',
        'snap-sec': '#60B524',
        'snap-text': '#434C55',
      },
    },
  },
  plugins: [require('@tailwindcss/forms'), require('@tailwindcss/aspect-ratio'), require('@tailwindcss/typography')],
};
