<?php
/*
Template Name: Form del buscador
*/
?>


<form role="search" method="get" class="col-20 margin-center" action="<?php echo esc_url( home_url( '/' ) ); ?>">
    <input type="search" class="col-80 left" placeholder="<?php echo esc_attr_x( 'Buscar', 'placeholder', 'base' ); ?>" value="<?php echo get_search_query(); ?>" name="s" />
    <button type="submit" class="col-20 right search-submit">
        <span class="screen-reader-text"><?php echo _e( 'Buscar', 'submit button', 'base' ); ?></span>
    </button>
</form>