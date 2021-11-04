<?php
get_header();

?>

    <!-- xxx -->
    <div class = "">
        <img id="bob-image" class="pic  " src="/wp-content/uploads/2021/05/regulyVietnam1.png">
    

    <img style="display:none;" id="book" class="pic book-style"  src="/wp-content/uploads/2021/09/Eric-Reguly-Book-cover.jpeg">
    
    </div>
        <!-- <img id="book" class="pic fade-in" src="/uploads/2021/09/Eric-Reguly-Book-cover.jpeg"> -->

    <!-- <div style="display:none;"  class= " front-page-title pic fade-in ">
        
            <?php echo do_shortcode(' [smartslider3 slider="2"] '); ?>
        </div> -->

<!-- xxxx -->
<div >
    <h4 class="bookSale"> Click to buy it here</h4>

    <div class="bookSales"style="display:none">
        <?php 
            $buy = get_field('buy_this_book');
            if( $buy ): ?>
                <a class="" href="<?php echo esc_url( $buy['amazon']['url'] ); ?>"><button class="buttonCenter"><?php echo esc_html( $buy['amazon']['title'] ); ?></button></a>
                <a class="" href="<?php echo esc_url( $buy['barnes_and_noble']['url'] ); ?>"><button class="buttonCenter"><?php echo esc_html( $buy['barnes_and_noble']['title'] ); ?></button></a> 
                <?php endif; ?>
    </div>
</div>
<h3> Photographs of my Father</h3>
<div style="display:none;"  class= " front-page-title pic fade-in ">
            <?php echo do_shortcode(' [smartslider3 slider="2"] '); ?>
        </div>
<?
get_footer();
