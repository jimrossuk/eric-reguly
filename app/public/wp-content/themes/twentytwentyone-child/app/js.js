
var $j = jQuery.noConflict();

$j("img").mouseover(function(){
   console.log("this is jim working!!");
});

$j( document).click(function() {
         console.log("newwest jim");
          $j("#xx").fadeTo( 700, .09).remove();
          $j(".x").show( ".x" );
          console.log("hover");
         });
        
console.log("last log thing")      