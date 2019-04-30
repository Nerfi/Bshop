import Typed from 'typed.js';

//const loadDynamicBannerText = () => {
  //new Typed('#banner-typed-text', {
    //strings: ["Look cool", "around the world"],
    //typeSpeed: 50,
    //loop: true
  //});
//}

export { loadDynamicBannerText }


// nuevo codigo añadido para no tener mas el error de Type on the console

const loadDynamicBannerText = () => {
  const banner = document.getElementById('banner-typed-text');
  if (banner) {
    new Typed('#banner-typed-text', {
      strings: ["Look cool", "around the world"],
      typeSpeed: 50,
      loop: true
    });
  }
}
