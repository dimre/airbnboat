import "bootstrap";
import { changeNavbarOnScroll } from '../components/navbar';
import 'mapbox-gl/dist/mapbox-gl.css'; // CSS // <-- you need to uncomment the stylesheet_pack_tag in the layout if you use the yarn!
import { initMapbox } from '../plugins/init_mapbox'; // internal imports
import { GinDaHouz } from '../components/slideshowgallery';


changeNavbarOnScroll();
initMapbox();
GinDaHouz();
