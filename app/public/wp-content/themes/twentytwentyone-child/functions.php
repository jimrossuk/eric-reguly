<?php

add_action( 'wp_enqueue_scripts', 'theme_enqueue_styles');

function theme_enqueue_styles() {
    wp_enqueue_style( 'parent-style', get_template_directory_uri() . '/style.css' );
    wp_enqueue_style( 'theme-style', get_stylesheet_directory_uri() . '/custom-sass/style.css');
    wp_enqueue_script( 'app-info', get_stylesheet_directory_uri() . '/app/js.js'); 
  
}

function theme_scripts() {
  wp_enqueue_script('jquery.js');
}
add_action('wp_enqueue_scripts', 'theme_scripts');  

wp_enqueue_script('jquery');


// https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6/jquery.min.js


// wp_enqueue_script( 'my-script', get_template_directory_uri() . '/app/js.js', array(), true );

// <script
// 			  src="https://code.jquery.com/jquery-3.6.0.min.js"
// 			  integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
// 			  crossorigin="anonymous"></script>
		