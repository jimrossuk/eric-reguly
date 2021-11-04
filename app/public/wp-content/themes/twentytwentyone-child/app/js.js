let $j = jQuery.noConflict();

let nJs = ".newsJs"; // keep a reference to the things
let bobI =("#bob-image");
let book =("#book");

// This is a test forthe news page...
// not exactly need...| It was a test script
// $j(function(){
//    $j(nJs).mouseenter(function()
//    {
//      $j(nJs).append("test");
//    });
//  });

$j(function(){
   $j(book).css("display","block");

})
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
        $j("#bob-image").fadeOut( 3300, function(){
          
         //   console.log("removed?");
         // $(book).fadeIn(slow);
        });
        console.log("fade");
      //   $j(book).fadeIn(3000);
        
      // $j("#bob-image").addClass(".testTest");
      //  $j("front-page-title").css("backround", "red !important");
      // $j(".bob-slider").css("background" , "orange" );
      // console.log("weork");
       $j("#bobI").fadeTo(400, 0).css("display", "none");
      // $j("#bob-image").remove();
   }
   //  $j("#bob-image").css("display","none")

   )
})

   // $j(book).fadeIn(1500);
        

// oldImg.stop(true).fadeOut(1500, function() {
//    $(this).remove();
// });
// newImg.fadeIn(1500);
// return false;

// $j(function(){
//    $j("bobI").mouseenter(function(){
//        $j(".pic").remove();
//       $j
//       console.log("is");
//    })
// })

{/* <a onclick='$("#notification").fadeOut(300, function() { $(this).remove(); });' class="notificationClose "><img src="close.png"/></a> */}



$j(function(){
   $j(".bookSale").click(function(){

      $j(".bookSales").css('display', "block");
      console.log("booksale test")
   })

});
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

// let p =(".pTest");
// let s = (".spanTest") ;
// let m =(".mousetest");

// $j(function(){
//    $j( m ).mousemove(function( event ) {
//    var pageCoords =  + event.pageX  + event.pageY;
//    // var clientCoords = "( " + event.clientX + ", " + event.clientY + " )"; 
//    $j(s).first().text( pageCoords );
//    // $j( s).last().text(  clientCoords );
//    console.log("first bit");
   
//    let x = 1156;	
   
//    // console.log(x);
  
//    if ( x === pageCoords ) {
//        $j(m).css("background" ,"red");
//          console.log("this is now red!!!");
//          $j("front").mousemove(function()
//         {
//            $j(this).slideUp();
//         } )
//  }
//  })
// });


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
         
console.log("Thirsdy!!!");    