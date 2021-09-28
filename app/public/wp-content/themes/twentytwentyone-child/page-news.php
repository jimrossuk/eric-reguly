<?php
get_header();
?>
<h3 class="news-page"> My latest articles</h3>
<?php

echo do_shortcode('[wp-rss-aggregator feeds="globe-and-mail"]');




get_footer();