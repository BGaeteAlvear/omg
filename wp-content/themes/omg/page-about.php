<?php
/*
Template Name: About Us Page
*/
?>
<?php get_header() ?>


    <section>
        <div class="row no-gutters">
            <div class="col-md-12">
                <?php if ( get_field( 'image_header' ) ) { ?>
                <div class="header-bg" style="background-image:linear-gradient(rgba(0,0,0,0.4), rgba(0,0,0,0.2)),url(<?php the_field( 'image_header' ); ?>);">
                    <?php } ?>
                    <div class="p-5 mb-0 text-white" style="bottom:0;position:absolute;">
                        <h2 class="extrabold font-100 pl-md-5 wow fadeIn"  data-wow-duration="2s">About Us</h2>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="py-5 my-4">
        <div class="container wow fadeIn"  data-wow-duration="2s">
            <div class="row">
                <div class="col-sm-10 offset-1">
                    <p><?php the_field( 'about_us' ); ?></p>
                </div>
            </div>
        </div>
    </section>
    <section class="proposition-bg">
        <div class="p-5">
            <div class="container">
                <div class="row no-gutters">
                    <div class="col-md-12">
                        <h2 class="text-white text-center light font-36 py-5">Our value proposition&nbsp;<span class="semibold">is simple</span></h2>
                        <div class="row px-md-4 wow fadeIn"  data-wow-duration="2s">
                            <div class="col-md-4 text-white"><img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/img/resourses/icon1-p2.svg?h=b808d146aba35c3ef5d451634abdb91e" style="width:120px;">
                                <h1 class="my-4">Quality</h1>
                                <p>We work alongside our suppliers to ensure that we deliver premium ingredients that are ethically sourced form organic farms.</p>
                            </div>
                            <div class="col-md-4 text-white"><img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/img/resourses/icon2-p2.svg?h=7fc031742467c8a3bfa674ff3b338623" style="width:120px;">
                                <h1 class="my-4">Pricing</h1>
                                <p>Direct sourcing allows us to offer competitive pricing.</p>
                            </div>
                            <div class="col-md-4 text-white"><img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/img/resourses/icon3-p2.svg?h=19f473c38ca685b8a33814a944ba6a2a" style="width:120px;">
                                <h1 class="my-4">Customer Service</h1>
                                <p>One of our ingredient specialists will assist you in every step of your purchasing process.</p>
                            </div>
                        </div>
                    </div>
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