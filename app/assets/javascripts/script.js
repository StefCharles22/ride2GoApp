
document.addEventListener('turbolinks:load', function() {

// old fxn:
// $(document).ready(function(){

  console.log("hello");



  // LIZA:
  $(window).on("resize", function() {
    var windowHeight = $(window).height();
    $(".flex-container").css('height', windowHeight - 65);
    $(".trips-index-flex-container").css('height', windowHeight - 65);
  }).resize();


  // Change BG images
  var imageArray = [
    "assets/key-west.jpg",
    "assets/golden-gate.jpg",
    // "assets/vegas.jpg",
    // "assets/bay-view.jpg",
    "assets/bridge.jpg"
  ];


  var imgDiv = document.getElementById("changing-imgs");
  console.log("This is the changing img div:", imgDiv);

  var i = 0;
  setInterval(function(){

    if (i ==  imageArray.length) {
      i = 0;
    }

    var bgImg = 'linear-gradient(rgba(0, 0, 0, 0.7), rgba(0, 0, 0, 0.7)),url(' + imageArray[i] + ')';
    imgDiv.style.backgroundImage = bgImg;

    console.log(imageArray[i]);

    i++;
  }, 4000);









  // Original:

  // var imgDiv = document.getElementById("changing-imgs");
  // console.log("This is the changing img div:", imgDiv);
  //
  // var i = 0;
  // setInterval(function(){
  //
  //   if (i ==  imageArray.length) {
  //     i = 0;
  //   }
  //
  //   var bgImg = 'linear-gradient(rgba(0, 0, 0, 0.7), rgba(0, 0, 0, 0.7)),url(' + imageArray[i] + ')';
  //   imgDiv.style.backgroundImage = bgImg;
  //
  //   console.log(imageArray[i]);
  //
  //   i++;
  // }, 4000);





  // nav bar sidenav
  $('.button-collapse').sideNav({full_width: true});

    // for caroussel slider
  $('.slider').slider({full_width: true});

     // the "href" attribute of .modal-trigger must specify the modal ID that wants to be triggered
    //  $('#modal1').modal('open');
});
