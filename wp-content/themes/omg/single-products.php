<?php get_header() ?>
<?php the_post() ?>
    <section class="py-4" style="margin-top:130px;">
        <div class="container">
            <div class="row">
                <div class="col-md-12"><a class="main-color font-14 link-back mb-3"
                                          href="<?php echo get_site_url(); ?>/products">&lt; BACK &nbsp;TO
                        PRODUCTS</a></div>
                <div class="col-md-12 py-3">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="product-box-img">
                                <?php if (get_field('image')) { ?>
                                    <img src="<?php the_field('image'); ?>"/>
                                <?php } ?>
                            </div>
                        </div>
                        <div class="col-md-6 wow fadeIn container-data-product"  data-wow-duration="2s">
                            <!--p class="my-0 dark-main-color font-24">Common name</p-->
                            <h1 class="main-color black font-60"><?php the_title() ?></h1>
                            <p class="dark-main-color light"><?php the_field('description'); ?></p>

                            <div class="row">
                                <?php // presentations_available ( value )
                                $presentations_available_array = get_field( 'presentations_available' );
                                if ( $presentations_available_array ):
                                    foreach ( $presentations_available_array as $presentations_available_item ):
                                        if( $presentations_available_item =='organic'){ ?>
                                        <div class="col-md-2 col-xs-4 presentation-available text-center">
                                            <p class="text-center m-1 font-type-presentation">organic</p><img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/img/organic.svg?h=0b6b5f2dfd52d27111c41354e6c61e32">
                                        </div>
                                        <?php }elseif ($presentations_available_item =='vegan'){ ?>
                                            <div class="col-md-2 col-xs-4 presentation-available text-center">
                                                <p class="text-center m-1 font-type-presentation">vegan</p><img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/img/vegan.svg">
                                            </div>
                                        <?php }elseif ($presentations_available_item =='kosher'){ ?>
                                            <div class="col-md-2 col-xs-4 presentation-available text-center">
                                                <p class="text-center m-1 font-type-presentation">kosher</p><img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/img/kosher.svg">
                                            </div>
                                        <?php }elseif ($presentations_available_item =='raw'){ ?>
                                            <div class="col-md-2 col-xs-4 presentation-available text-center">
                                                <p class="text-center m-1 font-type-presentation">raw</p><img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/img/raw.svg">
                                            </div>
                                        <?php }else{ ?>
                                            <div class="col-md-2 col-xs-4 presentation-available text-center">
                                                <p class="text-center m-1 font-type-presentation">gluten-free</p><img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/img/gluten-free.svg">
                                            </div>
                                        <?php }
                                    endforeach;
                                endif; ?>
                            </div>
                            <h4 class="main-color bold mt-3">Different presentations available</h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="py-5 my-2">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h1 class="main-color font-60 black wow fadeIn"  data-wow-duration="1.5s"><strong>Request for </strong>
                        <br><strong>Information
                            Form</strong></h1>
                </div>
                <div class="col-md-12">
                    <div class="row py-3 py-md-5 ">
                        <div class="col-md-12" style=" padding-bottom: 50px;">
                            <div class="card card-awesome" style="width: 100%;">
                                <div class="card-body p-5 box-shadows">
                                    <div class="p-1 p-md-5">
                                        <!--                                            aca va el formulario-->
                                        <div class="row">
                                            <div class="col-12">
                                                <?php the_content() ?>
                                                <?php echo do_shortcode( '[contact-form-7 id="50" title="Request for Information"]' ); ?>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class=" my-4" style="margin-top: -30px">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h1 class="main-color font-60 black text-center wow fadeIn"  data-wow-duration="1.5s"><strong>Related</strong> Products</h1>
                </div>
                <div class="col-md-12">
                    <div class="row py-5">

                        <?php

                        $terms = wp_get_post_terms( $post->ID, $taxonomy = 'category' );
                        $current_post = $post;
                        $term = $terms[0];
                        $posts_array = get_posts(
                            array(
                                'posts_per_page' => -1,
                                'post_type' => 'products',
                                'tax_query' => array(
                                    array(
                                        'taxonomy' => 'category',
                                        'field' => 'term_id',
                                        'terms' => $term->term_id,
                                    )
                                )
                            )
                        );
                        ?>

                        <?php foreach ($posts_array as $post) { ?>

                            <?php   $fields = get_fields($post->ID);  ?>

                            <?php if ( $post->ID != $current_post->ID ) : ?>
                                <div class="col-md-3 wow fadeIn"  data-wow-duration="1.5s" >
                                    <div class="product-box" style="position: relative;">
                                        <div class="detail-product-hover">
                                            <a class="btn btn-primary btn-round" style="margin: auto;" href="<?php echo get_permalink($post->ID);?>">SEE MORE</a>
                                        </div>
                                        <img  src="<?php echo $fields['image']; ?>">
                                    </div>
                                    <p class="p-2 black font-26"><?php echo $post->post_title; ?></p>
                                </div>
                            <?php else : ?>
                                <?php ?>
                            <?php endif; ?>
                        <?php } ?>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <script>

        $(document).ready(function () {

            elem =  $('.input-style');
            //console.log(elem.val().length);
            if(elem.val().length >0){
                $('#for_'+elem[0].id).addClass('valid');
            }else{
                $('#for_'+elem[0].id).removeClass('valid');
            }

            elem =  $('.input-style-textarea');
            //console.log(elem.val().length);
            if(elem.val().length >0){
                $('#for_'+elem[0].id).addClass('valid');
            }else{
                $('#for_'+elem[0].id).removeClass('valid');
            }



            $('.input-style').focusout(function () {
                elem = $(this);
                //console.log(elem.val().length);
                if(elem.val().length >0){
                    $('#for_'+elem[0].id).addClass('valid');
                }else{
                    $('#for_'+elem[0].id).removeClass('valid');
                }

            });

            $('.input-style').focus(function () {
                elem = $(this);
                $('#for_'+elem[0].id).addClass('valid');
            });

            $('.input-style-textarea').focusout(function () {
                elem = $(this);
                //console.log(elem.val().length);
                if(elem.val().length >0){
                    $('#for_'+elem[0].id).addClass('valid-area');
                }else{
                    $('#for_'+elem[0].id).removeClass('valid-area');
                }

            });

            $('.input-style-textarea').focus(function () {
                elem = $(this);
                $('#for_'+elem[0].id).addClass('valid-area');
            });
        });


    </script>

<?php get_footer() ?>