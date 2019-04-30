import "bootstrap";

import { initUpdateNavbarOnScroll } from '../components/navbar';
initUpdateNavbarOnScroll();

import { loadDynamicBannerText } from '../components/banner';
loadDynamicBannerText ();

import { initStarRating } from '../plugins/init_star_rating';
initStarRating();


import { displayContent } from '../components/cards';
displayContent ();


import { findContent } from '../components/cards';
findContent ();

import { bookContent } from '../components/cards';
bookContent ();


import { shineContent } from '../components/cards';
shineContent ();
