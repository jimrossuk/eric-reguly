let $j = jQuery.noConflict();

let nJs = ".newsJs"; // keep a reference to the things
let bobI =("#bob-image");
let book =("#book");

      // Shows photo then on mouse, the book cover apprears
$j(function(){
   $j(bobI).mouseenter(function(){
      $j(".front-page-title.pic.fade-in").css("display", "block");
        $j("#bob-image").fadeOut( 2500, function(){
         $j(book).fadeIn(2000);
        });
   })
})
// click to show where to buy book
$j(function(){
   $j(".bookSale").click(function(){

      $j(".bookSales").css('display', "block");
      console.log("booksale test")
   })

});
   
console.log("last log thing");  
         
console.log("Thirsdy!!!");    