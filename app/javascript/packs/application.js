import "bootstrap";

import { initUpdateNavbarOnScroll } from '../components/navbar';
import { loadDynamicBannerText } from '../components/banner';
import { initStarRating } from '../plugins/init_star_rating';
import { displayContent } from '../components/homecards';
import { findContent } from '../components/homecards';
import { bookContent } from '../components/homecards';
import { shineContent } from '../components/homecards';
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { initMapbox } from '../plugins/init_mapbox';



initUpdateNavbarOnScroll();
loadDynamicBannerText ();
initStarRating();
displayContent ();
findContent ();
bookContent ();
shineContent ();
initMapbox ();
