import "jquery-bar-rating";

//importing the css
import "jquery-bar-rating/dist/themes/css-stars.css";

import $ from 'jquery';





const rating = document.querySelector('#shop_review_rating')


//const initStarRating = () => {
  //if(rating) {
    //  $(rating)barrating({
      //theme: 'css-stars',
      //showSelectedRating: true,
      //onSelect: (value, text, event) => {
   //const form = document.querySelector("form.review_form");
    //form.submit();
    //}

    //});
  //}
//}


const initStarRating = () => {
  $('#shop_review_rating').barrating({
    theme: 'css-stars',
    onSelect: (value, text, event) => {
      const form = $("form.review_form"); // We are selecting the form on the page with its class
      form.submit(); // We submit the form with javascript
    }
  });
};
