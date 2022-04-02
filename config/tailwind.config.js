const defaultTheme = require('tailwindcss/defaultTheme');

module.exports = {
  content: ['./app/helpers/**/*.rb', './app/javascript/**/*.js', './app/views/**/*.{erb,haml,html,slim}'],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Inter var', ...defaultTheme.fontFamily.sans],
        body: ['Raleway', ...defaultTheme.fontFamily.sans],
        display: ['Merriweather', ...defaultTheme.fontFamily.serif],
      },
      colors: {
        'snap-main': '#3778c2',
        'snap-sec': '#60B524',
        'snap-text': '#434C55',
        'snap-title': '#3D4550',
        'snap-alert': '#EB8258',
      },
    },
  },
  plugins: [require('@tailwindcss/forms'), require('@tailwindcss/aspect-ratio'), require('@tailwindcss/typography')],
};
