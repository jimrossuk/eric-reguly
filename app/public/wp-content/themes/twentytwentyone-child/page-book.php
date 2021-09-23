<?php
get_header();

?>
<div>

    <div class = "imageAndText">
        
        <img id="bob-image" class="pic fade-in " src="/wp-content/uploads/2021/05/regulyVietnam1.png">
        <div  class= "front-page-title">
            <img id=" bob-image" style=display:none class = "book pic fade-in front-page-title new" src="/wp-content/uploads/2021/09/Eric-Reguly-Book-cover.jpeg">

            <h2 style=display:none class=" pic  fade-in fade-out" >Ghosts of War:</h2>
            
            <!-- <h4 style=display:none class=" pic front-page-title tx fade-in" > My Father's Vietnam Odyssey Revisited</h4>  -->
        </div>
    </div>
    
</div>
<div >
    <h4 class="bookSale"> Click to buy it here</h4>

    <div class="bookSales"style="display:none">

        <?php 


$buy = get_field('buy_this_book');
if( $buy ): ?>
           
            <a class="" href="<?php echo esc_url( $buy['amazon']['url'] ); ?>"><button class="buttonCenter"><?php echo esc_html( $buy['amazon']['title'] ); ?></button></a>
            <a class="" href="<?php echo esc_url( $buy['barnes_and_noble']['url'] ); ?>"><button class="buttonCenter"><?php echo esc_html( $buy['barnes_and_noble']['title'] ); ?></button></a>
        </div>
    </div>
    
<?php endif; ?>


   
    </div>
</div>

<?
get_footer();
