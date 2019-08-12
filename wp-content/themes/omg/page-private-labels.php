<?php
/*
Template Name: Products Private Labels
*/
?>
<?php get_header() ?>

    <section class="private-label mb-5" style="margin-top: 15%">
        <div class="container">

            <div class="row">
                <div class="col-md-6">
                    <h1 class="title-private-label-page blue f-300 img-header-private">PRIVATE <b class="f-700">LABEL</b></h1>
                </div>
                <div class="col-md-6" style="bottom: 0%">
                    <p class="content-p p-3">
                        <?php the_field( 'private_label' ); ?>
                </div>
            </div>
        </div>
    </section>

    <section id="sticky-buttons" class="menu-ancla my-5 sticky-buttons">
        <div class="container px-5">
            <div class="row">
                <div class="col-md-3 px-3">
                    <a href="#superfoods" class="btn btn-blue btn-round active">SuperFood Consumer</a>
                </div>
                <div class="col-md-3 px-3">
                    <a href="#as-easy" class="btn btn-blue btn-round">As easy as 1.2.3.4</a>
                </div>
                <div class="col-md-3 px-3">
                    <a href="#our-products" class="btn btn-blue btn-round">Our Products</a>
                </div>
                <div class="col-md-3 px-3">
                    <a href="#packaging" class="btn btn-blue btn-round">Packaging</a>
                </div>
            </div>
        </div>
    </section>


    <section class="superfood-consumer my-5" id="superfoods">
        <div class="container">
            <div class="header-bg pb-5" style="background-image:linear-gradient(rgba(0,0,0,0.6), rgba(0,0,0,0.2)),url(<?php echo get_stylesheet_directory_uri(); ?>/assets/images/superfood-consumer.jpg);">
                <div class="p-5 col-12 mb-0 text-white text-center pb-5" style="bottom:0;position:absolute;">
                    <div class="pl-md-5 text-center col-10 offset-md-1">
                        <h3 class="title-54 white f-300">SUPERFOODS <b class="f-700">CONSUMER</b></h3>
                        <p class="content-p white text-justify px-5 consumer-text">
                            <?php the_field( 'superfoods_consumer' ); ?>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="product-category my-5" style="margin-top: 8%">
        <div class="container text-center">
            <h3 class="title-54 f-300 blue pt-5">OUR PRODUCTS IN <br><b class="f-700">YOUR CATEGORIES</b></h3>
            <div class="row py-3">

                <div class="col col-ajust px-2">
                    <div class="box-category zoom" style="background-color: #874C66">
                        <h5>Vitamins & Supplements</h5>
                    </div>
                </div>
                <div class="col col-ajust px-2">
                    <div class="box-category zoom" style="background-color: #689A54">
                       <h5>Health & Wellness</h5>
                    </div>
                </div>
                <div class="col col-ajust px-2">
                    <div class="box-category zoom" style="background-color: #B84652;">
                        <h5>Baking & Cooking</h5>
                    </div>
                </div>
                <div class="col col-ajust px-2">
                    <div class="box-category zoom" style="background-color: #C88044">
                        <h5>Seeds & Grains</h5>
                    </div>
                </div>
                <div class="col col-ajust px-2">
                    <div class="box-category zoom" style="background-color: #4988AD">
                        <h5>Herbs & Spices</h5>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="bg-blue contact-form no-gutters mb-5" id="as-easy">
        <div class="container p-5">
            <div class="row text-center">
                <div class="row text-center">
                    <div class="col-12">
                        <h3 class=" title-private-label white f-300 mt-2">AS <b class="f-700">EASY AS</b></h3>
                    </div>
                </div>
                <div class="col-12 ">
                    <ul class="controls-slider">
                        <ul class="carousel-indicators-custom">
                            <li class="number-step active "id="carousel-selector-1">
                                <span class="number-work">1</span>
                                <div class="descrition-step ">
                                    PRODUCT
                                </div>
                            </li>
                            <li class="number-step" id="carousel-selector-2">
                                <span class="number-work">2</span>
                                <div class="descrition-step ">
                                    PACKING
                                </div>
                            </li>
                            <li class="number-step">
                                <span class="number-work" id="carousel-selector-3">3</span>
                                <div class="descrition-step ">
                                    DESING
                                </div>
                            </li>
                            <li class="number-step">
                                <span class="number-work" id="carousel-selector-4">4</span>
                                <div class="descrition-step ">
                                    SCOPE OF WORK
                                </div>
                            </li>
                        </ul>
                    </div>
                    <!--div class="controls-step pull-left">
                        <ul class="carousel-indicators-custom">
                            <li><button class="step-buttom" id="carousel-selector-1" type="button">1</button></li>
                            <li><button class="step-buttom" id="carousel-selector-2" type="button">2</button></li>
                            <li><button class="step-buttom" id="carousel-selector-3" type="button">3</button></li>
                            <li><button class="step-buttom" id="carousel-selector-4" type="button">4</button></li>
                        </ul>
                    </div-->


                    <div id="my-carousel-id" class="carousel slide" data-ride="carousel">
                        <div class="carousel-inner">

                            <?php if ( have_rows( 'as_easy_as' ) ) : ?>
                                <?php $i = 1 ?>
                                <?php while ( have_rows( 'as_easy_as' ) ) : the_row(); ?>
                                    <?php if ( get_sub_field( 'image' ) ) { ?>
                                        <div class="carousel-item <?php if($i == 1 ) { ?>active <?php } ?>">
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <img style="width: 60%" class="pt-4 pl-4" src="<?php the_sub_field( 'image' ); ?>" alt="" class="svg-img">
                                                </div>
                                                <div class="col-md-8 text-left">
                                                    <h5 class="white pb-4 pl-3"><?php the_sub_field( 'title' ); ?></h5>
                                                    <p class="content-p white col-10">
                                                        <?php the_sub_field( 'description' ); ?>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    <?php } ?>

                                    <?php $i ++ ?>
                                <?php endwhile; ?>
                            <?php else : ?>
                                <?php // no rows found ?>
                            <?php endif; ?>

                            <!--div class="carousel-item">
                                <div class="row">
                                    <div class="col-md-4">
                                        <img style="width: 60%"  class="pt-4 pl-4"  src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/polvo_blanco.svg" alt="" class="svg-img">
                                    </div>
                                    <div class="col-md-8 text-left">
                                        <h5 class="white pb-4 pl-3">2. Product</h5>
                                        <p class="content-p white col-10">
                                            Select the product(s) you are interested in from our list of available items for a quote. The OMG team will work with you to determine the best sie and line-up for your customers.
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <div class="row">
                                    <div class="col-md-4">
                                        <img style="width: 60%"  class="pt-4 pl-4"  src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/polvo_blanco.svg" alt="" class="svg-img">
                                    </div>
                                    <div class="col-md-8 text-left">
                                        <h5 class="white pb-4 pl-3">3. Product</h5>
                                        <p class="content-p white col-10">
                                            Select the product(s) you are interested in from our list of available items for a quote. The OMG team will work with you to determine the best sie and line-up for your customers.
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <div class="row">
                                    <div class="col-md-4">
                                        <img style="width: 60%"  class="pt-4 pl-4"  src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/polvo_blanco.svg" alt="" class="svg-img">
                                    </div>
                                    <div class="col-md-8 text-left">
                                        <h5 class="white pb-4 pl-3">4. Product</h5>
                                        <p class="content-p white col-10">
                                            Select the product(s) you are interested in from our list of available items for a quote. The OMG team will work with you to determine the best sie and line-up for your customers.
                                        </p>
                                    </div>
                                </div>
                            </div-->
                        </div>
                        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="our-products" id="our-products">
        <div class="container text-center">
            <h3 class="title-54 f-300 blue text-center mb-4">
                OUR <b class="f-700">PRODUCTS</b>
            </h3>
            <div class="row">
                <div class="accordion col-12 py-5" id="accordionExample">
                    <div class="card col-12 pb-2">

                        <?php
                        $taxonomy = 'category';
                        $terms = get_terms($taxonomy);

                        if ($terms && !is_wp_error($terms)) :?>
                            <?php foreach ($terms as $term) { ?>

                                <?php if($term->slug !='sin-categoria'){ ?>
                                <?php $color = get_field('color', 'term_' . $term->term_id); ?>
                                    <div class="card-header" id="headingOne" style="background-color: <?php echo $color ?>">
                                        <h2 class="mb-0 white f-700">
                                            <button class="btn btn-link pull-left white font-18" type="button" data-toggle="collapse" data-target="#<?php echo $term->slug; ?>" aria-expanded="true" aria-controls="<?php echo $term->slug; ?>">
                                                <?php echo $term->name; ?>
                                            </button>
                                        </h2>
                                    </div>
                                    <?php
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
                                    ); ?>
                                    <div id="<?php echo $term->slug; ?>" class="collapse show" aria-labelledby="<?php echo $term->slug; ?>" data-parent="#accordionExample">
                                        <div class="card-body">
                                            <table class="table table-products px-0">
                                                <thead>
                                                    <tr>
                                                        <th scope="col">PRODUCTS</th>
                                                        <th scope="col">COUNTRY OF ORIGIN</th>
                                                        <th scope="col">ORGANIC</th>
                                                        <th scope="col">KOSHER</th>
                                                        <th scope="col">VEGAN</th>
                                                        <th scope="col">RAW</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <?php foreach ($posts_array as $post) { ?>

                                                        <?php if ( have_rows( 'products' ) ) : ?>

                                                            <?php while ( have_rows( 'products' ) ) : the_row(); ?>
                                                                <tr>
                                                                    <td><?php the_sub_field( 'name_product' ); ?></td>
                                                                    <td><?php the_sub_field( 'country_origin' ); ?></td>

                                                                    <?php if ( get_sub_field( 'organic' ) == 1 ) { ?>
                                                                    <td>  <i class="fa fa-circle" style="color :#A9BD5C" aria-hidden="true"></i></td>
                                                                    <?php } else { ?>
                                                                    <td> - </td>
                                                                    <?php } ?>
                                                                    <?php if ( get_sub_field( 'kosher' ) == 1 ) {?>
                                                                    <td>  <i class="fa fa-circle" style="color :#A9BD5C" aria-hidden="true"></i></td>
                                                                    <?php } else { ?>
                                                                    <td> - </td>
                                                                    <?php } ?>
                                                                    <?php if ( get_sub_field( 'vegan' ) == 1 ) {?>
                                                                    <td>  <i class="fa fa-circle" style="color :#A9BD5C" aria-hidden="true"></i></td>
                                                                    <?php } else { ?>
                                                                    <td> - </td>
                                                                    <?php } ?>
                                                                    <?php if ( get_sub_field( 'raw' ) == 1 ) { ?>
                                                                    <td>  <i class="fa fa-circle" style="color :#A9BD5C" aria-hidden="true"></i></td>
                                                                    <?php } else { ?>
                                                                    <td> - </td>
                                                                    <?php } ?>
                                                                </tr>

                                                            <?php endwhile; ?>

                                                        <?php else : ?>
                                                            <?php // no rows found ?>
                                                        <?php endif; ?>
                                                    <?php } ?>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                            <?php } ?>
                        <?php } ?>
                        <?php endif; ?>

                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="bg-sky-blue contact-form no-gutters mb-5" id="packaging">
        <div class="container p-5">
            <div class="text-center white">
                <h3 class="title-54 f-300 text-center mb-4">
                    PACKAGING
                </h3>
                <div class="row">
                    <div class="col-lg-2">
                        <img class="img-paking" src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/pkg1.png" alt="">
                        <h5 class="description-paking white f-300"> <b>STAND-UP GUSSETED POUCH </b>CUSTOM PRINTED </h5>
                    </div>
                    <div class="col-lg-2 col-md-6">
                        <img  class="img-paking" src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/pkg2.png" alt="">
                        <h5 class="description-paking white f-300"> <b>STAND-UP GUSSETED POUCH </b>GENERIC WITH LABEL </h5>
                    </div>
                    <div class="col-lg-2 col-md-6 pl-5">
                        <img  class="img-paking" src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/pkg3.png" alt="">
                        <h5 class="description-paking white f-300"> <b>STICK <br> PACK </b></h5>
                    </div>
                    <div class="col-lg-2 col-md-6 pl-5 ">
                        <img  class="img-paking" src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/pkg4.png" alt="">
                        <h5 class="description-paking white f-300"> <b>PLASTIC <br> TUBES</b> </h5>
                    </div>
                    <div class="col-lg-2 col-md-6">
                        <img  class="img-paking" src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/pkg5.png" alt="">
                        <h5 class="description-paking white f-300"> <b>PET <br>CANISTER</b> </h5>
                    </div>
                    <div class="col-lg-2 col-md-6">
                        <img class="img-paking" src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/pkg6.png" alt="">
                        <h5 class="description-paking white f-300"> <b>RETAIL <br>READY TRAY </b></h5>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="certifications">
        <div class="container p-5">
            <div class="row ">
                <div class="col-12 text-center">
                    <h3 class="title-54 f-300 text-center mb-4">
                        CERTIFICATIONS
                    </h3>
                    <div class="col-md-8 offset-md-2 text-center mb-5">
                        <p class="content-p text-justify">
                            Every OMG product is certified USDA Organic and Kosher.  We are able to expand to offer Project non-GMO Certification as well as other certifications that are required by your consumers.  All of our products are produced in GFSI audited facilities.
                            <?php the_field( 'certifications' ); ?>
                        </p>
                    </div>
                    <div class="col-md-12 text-center pb-5">
                        <img class="certifications-img" src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/certifications.png" alt="certifications">
                    </div>

                </div>

            </div>
        </div>
    </section>



    <!--contact -->
    <section class="bg-blue contact-form no-gutters mb-5">
        <div class="container p-5">
            <div class="row text-left">
                <div class="col-12">
                    <h3 class=" title-private-label white f-300 mt-2">CONTACT <b class="f-700">US</b></h3>
                </div>
            </div>
            <div class="no-gutters"  >
                <div class="my-5">
                    <?php the_content() ?>
                    <?php echo do_shortcode( '[contact-form-7 id="5" title="Contact Form"]' ); ?>
                </div>
            </div>
        </div>
    </section>

    <script>
        function showBox(slug) {
            $('.box-cats').hide();
            $('#box_' + slug).fadeIn();
            var header = $('#products').offset().top;
            $("html, body").animate({ scrollTop: header}, 1000);
        }


        $(document).ready(function () {
            if(localStorage.getItem('slug')){
                showBox(localStorage.getItem('slug'));
                var header = $('#products').offset().top;
                $("html, body").animate({ scrollTop: header}, 1000);
                localStorage.removeItem('slug');
            }else{
                var boxes =  $('.box-cats');
                $(boxes[0]).fadeIn();
                var header = $('#products').offset();
                $("html, body").animate({ scrollTop: header}, 1000);
            }
        });

        /*$(function () {
            $('a[href*="#"]:not([href="#"])').click(function () {
                if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') && location.hostname == this.hostname) {
                    var target = $(this.hash);
                    target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
                    if (target.length) {
                        $('html, body').animate({
                            scrollTop: target.offset().top -200
                        }, 1000);
                        return false;
                    }
                }
            });
        });*/

        $( "a.btn-blue" ).click(function( event ) {
            event.preventDefault();
            console.log();
            var elem = $(this).attr("href");
            var header = $(elem).offset().top -200;
             $("html, body").animate({ scrollTop: header}, 1000);


        });

        $(window).scroll(function () {
            var scroll = $(window).scrollTop();
            var position = $('#sticky-buttons').position();
            // console.log( position);
            if (position.top > 490 && position.top < 3829) {
                $('#sticky-buttons').addClass('on-sticky-buttons');
            } else {
                $('#sticky-buttons').removeClass('on-sticky-buttons');
            }
            if(position.top > 3829){
                $('#sticky-buttons').addClass('sticky-buttons-trans');
            }else if(position.top < 4000){
                $('#sticky-buttons').removeClass('sticky-buttons-trans');
            }
        });

        $(document).ready(function(){
            $('.carousel').carousel();
            $('[id^=carousel-selector-]').click( function(){
                var id_selector = $(this).attr("id");
                var id = id_selector.substr(id_selector.length -1);
                id = parseInt(id);
                console.log(id);
                $('#my-carousel-id').carousel(id - 1);
            });
        });


    </script>
<?php get_footer() ?>