$('turbolinks:load', function() {
    var selectedClass = "";
    $(".fil-cat").click(function(){ 
    selectedClass = $(this).attr("data-rel"); 
     $(".section").fadeTo(100, 0.1);
    $(".section div").not("."+selectedClass).fadeOut().removeClass('scale-anm');
    setTimeout(function() {
      $("."+selectedClass).fadeIn().addClass('scale-anm');
      $(".section").fadeTo(300, 1);
    }, 300); 
    
  });
});