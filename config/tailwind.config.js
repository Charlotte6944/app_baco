const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}',
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Graphik', 'sans-serif'],
        serif: ['Merriweather', 'serif']
      },
      colors: {
        'black': '#0c1115',
        'gray_dark': '#6a6b6c',
        'blue': '#01509f',
        'yellow': '#ffe530',
        'saumon': '#ffd09e',
        'gray_light': '#f8fcff',
        'red': '#b91c1c'
      }
    }
  }
};
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/container-queries'),
  ]
