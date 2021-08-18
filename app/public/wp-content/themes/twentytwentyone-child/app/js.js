let $j = jQuery.noConflict();

let nJs = ".newsJs"; // keep a reference to the things
let bobI =("#bob-image");

$j(function(){
   $j(nJs).mouseenter(function()
   {
     $j(nJs).append("test");
   });
 });


//  $j(function(){

//    $j("bob-image").fadeTo( 400, .009)
//  })

// 
// THis one works
// $j( ".front").ready(function() {    
//           $j("#bob-image").fadeTo( 400, .009);
       
$j(function(){
   $j(bobI).mouseenter(function(){
      
      $j(".front-page-title.pic.fade-in").css("display", "block");
      $j("#bob-image").fadeTo( 400, .5);
      // $j(".site-header").css("padding-bottom" , 0)
   }
   )
})
      
//          },);
         //  $j(document).click(function(){
         //     $j("h2.x").fadeIn("slow").css(  "color", "red");
         //     $j(".thish1").remove();
         //     $j(".thish3").remove();
         //    //  What if I put the map here.. a
            $j(".x").append( document.createTextNode( " " ) );
         //     $j("#bob-image").remove();
            
         // });
// This above one works
// 



        //  $j( ".front" ).click(function() {
        //     $( this ).slideUp();
        //   });


        //  $( ".myClass" ).css( "border", "3px solid red" );

// $j( ".text-2" ).click(function() {
// $j(  ).show(".text");
// }, function() {
// $j( this ).css(  "color", "blue" );
// console.log("text")
// } );


// $j( "newsJavaSTest.newsJs" ).hover(function() {
//     $j( this ).fadeOut( 100 );
//     $j( this ).fadeIn( 500 );
//   });

         
console.log("last log thing");    