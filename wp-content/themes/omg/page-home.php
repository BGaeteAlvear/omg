<?php
/*
Template Name: Home Page
*/
?>
<?php get_header() ?>

    <section id="sliders">
        <div class="carousel slide" data-ride="carousel" id="carousel-1"
        ">

        <div class="carousel-inner" role="listbox">

            <div class="carousel-item active ">
                <div class="black-velo"></div>
                <img class="d-block w-100 cover" style="background-image:linear-gradient(rgba(0,0,0,2), rgba(0,0,0,2))"
                     alt="omg" src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/img-home-header.jpg"
                     data-holder-rendered="true" style="margin-top: -90px;">
            </div>

        </div>
        <div class="controls-slide" style="display: none">
            <!-- Start: Previous -->
            <a class="carousel-control-prev" href="#carousel-1" role="button" data-slide="prev"><span
                        class="carousel-control-prev-icon"></span><span class="sr-only">Previous</span></a>
            <!-- End: Previous -->
            <!-- Start: Next -->
            <a class="carousel-control-next" href="#carousel-1" role="button" data-slide="next"><span
                        class="carousel-control-next-icon"></span><span class="sr-only">Next</span></a>
            <!-- End: Next -->
        </div>

        </div>
        <div class="row no-gutters">
            <!--div class="col-12 bg-header-slide pb-0 mb-0"></div-->

            <div class="col-12">
                <div class="text-center content-principal-home">
                    <img style="width: 120px; margin-top: -100px;"
                         src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/omg-home-logo.svg" alt="">
                    <div class="text-header" style="color:white;">
                        <h3>WELCOLME TO <br>A <b>SUPER LIFE</b></h3>
                    </div>


                    <div id="midle-menu" style="max-width: 800px;" class="mx-auto py-4">
                        <?php

                        wp_nav_menu(array(
                            'theme_location' => 'primary',
                            'depth' => 2,
                            'container' => 'div',
//                            'container_class'   => 'container ',
//                           'container_id'      => 'bs-example-navbar-collapse-1',
                            'menu_class' => 'nav nav-fill ml-auto ',
                            'fallback_cb' => 'WP_Bootstrap_Navwalker::fallback',
                            'walker' => new WP_Bootstrap_Navwalker(),
                        ));
                        ?>
                    </div>
                </div>
            </div>

            <script>

                $('#menu-principal').hide();

                $(window).scroll(function () {
                    var scroll = $(window).scrollTop();

                    // console.log( $('#midle-menu').position());
                    if (scroll < 500) {
                        $('#midle-menu').slideDown();
                        $('#menu-principal').slideUp();
                        $('.fixed-top').removeClass('navbar-white');
                    } else {
                        $('#midle-menu').slideUp();
                        $('#menu-principal').slideDown();
                        $('.fixed-top').addClass('navbar-white');
                    }
                });
            </script>

        </div>
    </section>


    <section class="no-gutters meet-omg mt-5 p-5 mb-5">
        <div class="container">
            <div class="row">

                <div class="col-md-5">
                    <h3 class="meet-omg-title blue">Meet OMG! <br>
                        <b>Food Company</b></h3>
                </div>
                <div class="col-md-7 px-5 content-product-img">
                    <?php if ( have_rows( 'meet_omg!_food_company' ) ) : ?>
                        <?php while ( have_rows( 'meet_omg!_food_company' ) ) : the_row(); ?>
                            <p class="content-p"><?php the_sub_field( 'meet_omg!_food_company' ); ?></p>
                            <?php $buttom_all_products = get_sub_field( 'buttom_all_products' ); ?>
                            <?php if ( $buttom_all_products ) { ?>
                                <a class="btn btn-primary btn-lg btn-round mt-5" href="<?php echo $buttom_all_products; ?>">ALL PRODUCTS</a>
                            <?php } ?>
                        <?php endwhile; ?>
                    <?php endif; ?>
                </div>
            </div>
        </div>
    </section>

    <section class="our-brand mt-4 mb-5">
        <div class="container">
            <h3 class="title-omg-brands-home blue">OMG! <b>BRANDS</b></h3>
            <div class="row">

                <?php if ( have_rows( 'omg_brands' ) ) : ?>
                    <?php while ( have_rows( 'omg_brands' ) ) : the_row(); ?>
                        <?php if ( have_rows( 'brand' ) ) : ?>
                            <?php while ( have_rows( 'brand' ) ) : the_row(); ?>

                                <div class="col-xs-12 col-md-4 mb-4 mb-md-0 last-news">
                                    <div class="black-velo-in-col fix-bug"></div>
                                    <div class="last-news-content">
                                        <?php if ( get_sub_field( 'logo' ) ) { ?>
                                        <div class="last-news-date font-9 uppercase">
                                            <img src="<?php the_sub_field( 'logo' ); ?>" />
                                        </div>
                                        <?php } ?>
                                        <div class="last-news-title"><?php the_sub_field( 'title' ); ?></div>
                                        <div class="last-news-description"><?php the_sub_field( 'content' ); ?></div>
                                        <?php $link = get_sub_field( 'link' ); ?>
                                        <?php if ( $link ) { ?>
                                            <a href="<?php echo $link; ?>" class="btn btn-outline-secondary btn-round last-news-btn">Read More</a>
                                        <?php } ?>
                                    </div>
                                    <img src="<?php the_sub_field( 'imagen' ); ?>" width="100%" alt="">
                                </div>
                            <?php endwhile; ?>
                        <?php else : ?>
                            <?php // no rows found ?>
                        <?php endif; ?>
                    <?php endwhile; ?>
                <?php endif; ?>

            </div>
        </div>
    </section>

    <script>
        $('.fade-msg').slick({
            dots: false,
            infinite: true,
            speed: 2000,
            fade: true,
            autoplay: true,
            cssEase: 'linear'
        });
    </script>

    <section class="private-label-home no-gutters mb-5">
        <div class="container p-5">
            <div class="row ">
                <div class="col-md-5">
                    <h3 class=" title-private-label f-300">PRIVATE <b class="f-700">LABEL</b></h3>
                    <p class="content-p white f-300">
                        OMG! Food Company can help your company design and launch its own Private Brand by tapping into
                        our expertise in package design, product sourcing, and production capabilities.
                    </p>
                    <a href="" class="btn btn-white-inverter mt-3">Read More</a>
                </div>
                <div class="col-md-7">
                    <img class="p-5 img-private-label"
                         src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/envaces.png"
                         alt="private-label">
                </div>
            </div>

        </div>
    </section>


    <section class="altalena-section mt-5">
        <div class="container p-5">
            <div class="row">
                <div class="col-md-7">
                    <img class="p-5 img-altalena"
                         src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/altalena-home.png"
                         alt="omg-altalena-product">
                </div>
                <div class="col-md-5 pt-5">
                    <img style="width: 40%;" class="altalena-logo-omg pb-2"
                         src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/altalena-logo.svg"
                         alt="omg-altalena-logo">
                    <p class="content-p mt-4">Looking for bulk materials? Our sister company, Altalena, offers the
                        finest ingredients with a focus on organic superfoods that are imported directly from their
                        sources. </p>
                    <a href="" class="btn btn-black-inverter mt-3">Read More</a>
                </div>
            </div>
        </div>
    </section>


    <!--contact -->
    <section class="bg-blue contact-form no-gutters mb-5">
        <div class="container p-5">
            <div class="row text-left">
                <h3 class=" title-private-label white f-300 mt-2">CONTACT <b class="f-700">US</b></h3>
            </div>
            <div class="no-gutters">
                <div class="my-5">
                    <?php the_content() ?>
                    <?php echo do_shortcode('[contact-form-7 id="5" title="Contact Form"]'); ?>
                </div>
            </div>
        </div>
    </section>


    <script>

        $(document).ready(function () {
            /*$('.input-style').focusout(function () {
                elem = $(this);
                //console.log(elem.val().length);
                if(elem.val().length >0){
                    $('#for_'+elem[0].id).addClass('valid');
                }else{
                    $('#for_'+elem[0].id).removeClass('valid');
                }

            });*/


            elem = $('.input-style');
            //console.log(elem.val().length);
            if (elem.val().length > 0) {
                $('#for_' + elem[0].id).addClass('valid');
            } else {
                $('#for_' + elem[0].id).removeClass('valid');
            }

            /*
            elem =  $('.input-style-textarea');
            //console.log(elem.val().length);
            if(elem.val().length >0){
                $('#for_'+elem[0].id).addClass('valid');
            }else{
                $('#for_'+elem[0].id).removeClass('valid');
            }
*/

            $('.input-style').focus(function () {
                elem = $(this);
                $('#for_' + elem[0].id).addClass('valid');
            });

            $('.input-style-textarea').focusout(function () {
                elem = $(this);
                //console.log(elem.val().length);
                if (elem.val().length > 0) {
                    $('#for_' + elem[0].id).addClass('valid-area');
                } else {
                    $('#for_' + elem[0].id).removeClass('valid-area');
                }

            });

            $('.input-style-textarea').focus(function () {
                elem = $(this);
                $('#for_' + elem[0].id).addClass('valid-area');
            });
        });


    </script>

    <script>

        function getProductCategory(data) {
            localStorage.setItem('slug', data);
            window.location.href = '<?php echo get_site_url(); ?>/products';
        }


        $('.clients-say').slick({
            dots: false,
            infinite: true,
            speed: 500,
            arrows: true,
            slidesToShow: 1,
            adaptiveHeight: true,
            autoplay: true,
            autoplaySpeed: 4000,

            prevArrow: '<a class="carousel-control-prev slick-control-prev"><span class="carousel-control-prev-icon slick-prev-custom-icon slick-prev-custom"></span><span class="sr-only">Previous</span></a>',
            nextArrow: '<a class="carousel-control-next slick-control-next"><span class="carousel-control-next-icon slick-next-custom-icon slick-next-custom"></span><span class="sr-only">Next</span></a>',
        });


    </script>

<?php get_footer() ?>