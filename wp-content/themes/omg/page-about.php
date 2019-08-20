<?php
/*
Template Name: About Us Page
*/
?>
<?php get_header() ?>


    <section class="about-us mb-5" style="margin-top: 15%">
        <div class="container">

            <div class="row">
                <div class="col-md-6">
                    <h1 class="title-about-us blue f-300 img-header-about">ABOUT <b class="f-700">US</b></h1>
                </div>
                <div class="col-md-6">
                    <p class="content-p "></p>
                </div>
                <div class="col-md-6 p-4 mt-4 text-center">
                    <img class="img-circle circle-1" src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/img-about-us.jpg" alt="">
                </div>
                <div class="col-md-6 movil-p" style="margin-top: 9%">
                    <h3 class="f-300 blue title-54">EXPERTISE</h3>
                    <p class="content-p about-us-right-img"><?php the_field( 'expertise' ); ?></p>
                </div>
            </div>
        </div>
    </section>

    <section class="brand-about-us">
        <div class="container">
            <div class="row ">
                <div class="col-md-8" style="padding-top:7%">
                    <div class="border-5 bg-green white p-5 ">
                        <h3 class="white f-300 title-54 pl-2 pb-3">INNOVATION</h3>

                        <p class="content-p white col-md-8 col-sm-12 no-gutters">
                            <?php the_field( 'direct_sourcing' ); ?>
                        </p>
                    </div>
                </div>

                <div class="col-md-4">
                    <img  class="img-brand-about-us pull-right" src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/brand-about-us.png" alt="">
                </div>
            </div>

        </div>

    </section>

    <section class="about-us mb-5">
        <div class="container">

            <div class="row">
                <div class="col-md-6 p-4 mt-4 text-center">
                    <img class="img-circle" src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/img-about-us-2.jpg" alt="">
                </div>
                <div class="col-md-6 movil-p" style="margin-top: 9%">
                    <h3 class="f-300 blue title-54">DIRECT SOURCING</h3>
                    <p class="content-p about-us-left-img">We cultivate direct and sustainable sourcing relationships with
                        farmers across the globe, including Peru, India, Mexico, Chile, and
                        others. This ensures we are able to offer a consistent supply of the
                        highest quality ingredients at competitive prices.</p>
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
            <div class="no-gutters"  >
                <div class="my-5">
                    <?php the_content() ?>
                    <?php echo do_shortcode( '[contact-form-7 id="5" title="Contact Form"]' ); ?>
                </div>
            </div>
        </div>
    </section>

<?php get_footer() ?>