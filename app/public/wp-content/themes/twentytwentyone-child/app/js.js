
var $j = jQuery.noConflict();

$j("img").mouseover(function(){
   console.log("this is jim working!!");
});

 $j( document ).hover(function() {
         console.log("newwest jim");
          $j("#xx").fadeTo( 700, .09);
          $j(".x").show( ".x" );
          console.log("newwest add");
       });

       $j(document).click(function() {
         $j(".front").remove(".front");
       });

console.log("last log thing")    