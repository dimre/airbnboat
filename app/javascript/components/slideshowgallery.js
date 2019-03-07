
function plusSlides(n, slideIndex) {
  showSlides(slideIndex += n, slideIndex);
}

function currentSlide(n, slideIndex) {
  showSlides(slideIndex = n, slideIndex);
}

function showSlides(n, slideIndex) {
  var i;
  console.log(slideIndex)
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("demo");
  var captionText = document.getElementById("caption");
  if (n > slides.length) {slideIndex = 1}
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
  }
  console.log(slides[0])
  document.getElementById('slide_on').dataset.slide = n % slides.length

  slides[slideIndex-1].style.display = "block";
  dots[slideIndex-1].className += " active";
  captionText.innerHTML = dots[slideIndex-1].alt;
}


function GinDaHouz(){

let slideIndex = document.getElementById('slide_on').dataset.slide

showSlides(slideIndex, 1);

  document.querySelector(".next").addEventListener('click', function(e){
let slideIndex = parseInt(document.getElementById('slide_on').dataset.slide)

          plusSlides(1, slideIndex)
  })

  document.querySelector(".prev").addEventListener('click', function(e){
let slideIndex = parseInt(document.getElementById('slide_on').dataset.slide)

          plusSlides(-1, slideIndex)
  })
}

export { GinDaHouz }

