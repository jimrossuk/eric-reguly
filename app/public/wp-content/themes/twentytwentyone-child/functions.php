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


function add_custom_fonts() {
	wp_enqueue_style( 'custom_web_fonts', 'https://fonts.googleapis.com/css2?family=Lora&display=swap' );
  wp_enqueue_style( 'custom_web_fonts2', 'https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@200&display=swap');
}


add_action( 'enqueue_block_assets', 'add_custom_fonts' );