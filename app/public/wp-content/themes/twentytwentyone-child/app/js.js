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
      $j("#bob-image").fadeTo( 3300, 0);
      // $j("front-page-title").fadeTo(400, 1);
      // $j(".site-header").css("padding-bottom" , 0)
      console.log("fading")
   }
   )
})
   // want to make the map bit work wht x and y axis trigger points

//          },);
         //  $j(document).click(function(){
         //     $j("h2.x").fadeIn("slow").css(  "color", "red");
         //     $j(".thish1").remove();
         //     $j(".thish3").remove();
         //    //  What if I put the map here.. a
            // $j(".x").append( document.createTextNode( " " ) );
         //     $j("#bob-image").remove();
            
         // });
// This above one works
// 

// This section is for scroll

let p =(".pTest");
let s = (".spanTest") ;
let m =(".mousetest");

$j(function(){
   $j( m ).mousemove(function( event ) {
   var pageCoords =  + event.pageX  + event.pageY;
   // var clientCoords = "( " + event.clientX + ", " + event.clientY + " )"; 
   $j(s).first().text( pageCoords );
   // $j( s).last().text(  clientCoords );
   console.log("first bit");
   
   let x = 1156;	
   
   // console.log(x);
  
   if ( x === pageCoords ) {
       $j(m).css("background" ,"red");
         console.log("this is now red!!!");
         $j("front").mousemove(function()
        {
           $j(this).slideUp();
        } )
 }
 })
});


//  End of scroll section

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