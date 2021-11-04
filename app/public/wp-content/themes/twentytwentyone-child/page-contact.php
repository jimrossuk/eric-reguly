<?php
get_header();
?>
<div style="margin:3em">

    <h3>Contact</h3>
    <!-- Contact section -->
    <div> 
        <h4> Email <a href="mailto:<?php the_field('email'); ?>">ericreguly@gmail.com</a> <?php  ?></h4>
        <h4> Twitter  <a href="<?php the_field('twitter'); ?>">@ereguly</a> <?php  ?></h4> 
        
        <?php
echo do_shortcode("[ninja_form id=1]");
?>

    </div>
</div>
<?php

get_footer();