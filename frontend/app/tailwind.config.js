/** @type {import('tailwindcss').Config} */
export default {
  content: [
    "./index.html",
    "./src/**/*.{vue,js,ts,jsx,tsx}",
  ],
  theme: {
    extend: {
      colors:
          {
            rk: {
              primary100: '#FF6347',
              primary200: '#dc442e',
              primary300: '#8d0000',
              accent100: '#32CD32',
              accent200: '#006a00',
              text100: '#333333',
              text200: '#5c5c5c',
              bg100: '#F7F7F7',
              bg200: '#ededed',
              bg300: '#c4c4c4',
            },
            darkrk: {
              primary100: '#FF6347',
              primary200: '#dc442e',
              primary300: '#8d0000',
              accent100: '#32CD32',
              accent200: '#006a00',
              text100: '#FFFFFF',
              text200: '#e0e0e0',
              bg100: '#1A1A1A',
              bg200: '#292929',
              bg300: '#404040',
            },
          },
    },
  },
  plugins: [],
}

    // --primary-100:#FF6347;
    // --primary-200:#dc442e;
    // --primary-300:#8d0000;
    // --accent-100:#32CD32;
    // --accent-200:#006a00;
    // --text-100:#333333;
    // --text-200:#5c5c5c;
    // --bg-100:#F7F7F7;
    // --bg-200:#ededed;
    // --bg-300:#c4c4c4;
    //

//Dark mode
//     --primary-100:#FF6347;
//     --primary-200:#dc442e;
//     --primary-300:#8d0000;
//     --accent-100:#32CD32;
//     --accent-200:#006a00;
//     --text-100:#FFFFFF;
//     --text-200:#e0e0e0;
//     --bg-100:#1A1A1A;
//     --bg-200:#292929;
//     --bg-300:#404040;
//