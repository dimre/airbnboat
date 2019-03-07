import "bootstrap";
import { changeNavbarOnScroll } from '../components/navbar';
import 'mapbox-gl/dist/mapbox-gl.css'; // CSS // <-- you need to uncomment the stylesheet_pack_tag in the layout if you use the yarn!
import { initMapbox } from '../plugins/init_mapbox'; // internal imports
import { GinDaHouz } from '../components/slideshowgallery';


changeNavbarOnScroll();
initMapbox();
GinDaHouz();
import 'flatpickr/dist/flatpickr.css';
import flatpickr from "flatpickr";
import { toggleDateInputs } from '../components/booking';

changeNavbarOnScroll();
initMapbox();
toggleDateInputs();

import noUiSlider from "nouislider";
import 'nouislider/distribute/nouislider.css';

var slider = document.getElementById('slider-price');

noUiSlider.create(slider, {
    start: [40, 60],
    connect: true,
    range: {
        'min': 0,
        'max': 100
    }
});

var nodes_price = [
    document.getElementById('min_price'), // 0
    document.getElementById('max_price')  // 1
];
console.log(nodes_price)
slider.noUiSlider.on('update', function (values, handle, unencoded, isTap, positions) {
    console.log(values[handle])
    nodes_price[handle].value = values[handle];
});


var slider = document.getElementById('slider-capacity');

noUiSlider.create(slider, {
    start: [8, 12],
    connect: true,
    range: {
        'min': 0,
        'max': 20
    }
});

var nodes_capacity = [
    document.getElementById('capacity_low'), // 0
    document.getElementById('capacity_high')  // 1
];
console.log(nodes_capacity)
slider.noUiSlider.on('update', function (values, handle, unencoded, isTap, positions) {
    console.log(values[handle])
    nodes_capacity[handle].value = values[handle];
});
