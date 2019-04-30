import "jquery-bar-rating";

//importing the css
import "jquery-bar-rating/dist/themes/css-stars.css";




const initStarRating = () => {
  $('#shop_review_rating').barrating({
    theme: 'css-stars',
    showSelectedRating: true,
    onSelect: (value, text, event) => {
      const form = $("form.review_form");
      form.submit();
    }
  });
};



export { initStarRating };
