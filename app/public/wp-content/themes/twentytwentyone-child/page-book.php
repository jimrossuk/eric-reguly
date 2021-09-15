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
<div>
    <h1> Buy it here</h1>


    <?php 
    if( have_rows('buy_this_book') ): ?>
    <?php while( have_rows('buy_this_book') ): the_row(); 

        $bna = get_sub_field('barnes_and_noble');
        $amz = get_sub_field('amazon');
        ?>
<div>
            <ui>
                <li>
                <a href="<?php echo esc_url( $bna['url']); ?>"><?php echo esc_html( $bna['title'] ); ?></a>
                </li>
                <li>
                <a href="<?php echo esc_url( $amz['url']); ?>"><?php echo esc_html( $amz['title'] ); ?></a>
                </li>
            </ui>
           
            
     

        <?php endwhile; ?>
<?php endif; ?>    
 
</div>

<?
get_footer();