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
                    <h1 class="title-private-label-page blue f-300">PRIVATE <b class="f-700">LABEL</b></h1>
                </div>
                <div class="col-md-6" style="bottom: 0%">
                    <p class="content-p p-3">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam
                        nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat
                        volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation
                        ullamcorper suscipit lobortis.</p>
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

    <script>


        $(window).scroll(function () {
            var scroll = $(window).scrollTop();
            var position = $('#sticky-buttons').position();
             console.log( position);
            if (position.top > 600 && position.top < 1829) {
                $('#sticky-buttons').addClass('on-sticky-buttons');
            } else {
                $('#sticky-buttons').removeClass('on-sticky-buttons');
            }
            if(position.top > 1829){
                $('#sticky-buttons').addClass('sticky-buttons-trans');
            }else if(position.top < 2000){
                $('#sticky-buttons').removeClass('sticky-buttons-trans');
            }
        });
    </script>

    <section class="superfood-consumer my-5" id="superfoods">
        <div class="container">
            <div class="header-bg pb-5" style="background-image:linear-gradient(rgba(0,0,0,0.6), rgba(0,0,0,0.2)),url(<?php echo get_stylesheet_directory_uri(); ?>/assets/images/superfood-consumer.jpg);">
                <div class="p-5 col-12 mb-0 text-white text-center pb-5" style="bottom:0;position:absolute;">
                    <div class="pl-md-5 text-center col-10 offset-md-1">
                        <h3 class="title-54 white f-300">SUPERFOODS <b class="f-700">CONSUMER</b></h3>
                        <p class="content-p white text-justify px-5">Consumers of Superfoods are constantly seeking new and better ways to incorporate healthy, nutrient-dense products into their daily lives. OMG Superfoods understands this mentality and is able to partner with retailers to meet customers demands.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="product-category my-5" style="margin-top: 8%">
        <div class="container text-center">
            <h3 class="title-54 f-300 blue pt-5">OUR PRODUCTS IN <br><b class="f-700">YOUR CATEGORIES</b></h3>
            <div class="row py-3">
                <div class="col px-2">
                    <div class="box-category zoom" style="background-color: #874C66">
                        <h5>Vitamins & Supplements</h5>
                    </div>
                </div>
                <div class="col px-2">
                    <div class="box-category zoom" style="background-color: #689A54">
                       <h5>Health & Wellness</h5>
                    </div>
                </div>
                <div class="col px-2">
                    <div class="box-category zoom" style="background-color: #B84652;">
                        <h5>Baking & Cooking</h5>
                    </div>
                </div>
                <div class="col px-2">
                    <div class="box-category zoom" style="background-color: #C88044">
                        <h5>Seeds & Grains</h5>
                    </div>
                </div>
                <div class="col px-2">
                    <div class="box-category zoom" style="background-color: #4988AD">
                        <h5>Herbs & Spices</h5>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="bg-blue contact-form no-gutters mb-5" id="as-easy">
        <div class="container p-5">
            <div class="row text-left">
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

                        if ($terms && !is_wp_error($terms)) :
                        ?>

                            <?php foreach ($terms as $term) { ?>

                                <?php if($term->slug !='other-products'){ ?>

                                    <div class="card-header" id="headingOne" style="background-color: <?php $catIMGId = get_field('color', 'term_' . $term->term_id); ?>">
                                        <h2 class="mb-0 white f-700">
                                            <button class="btn btn-link pull-left white" type="button" data-toggle="collapse" data-target="#elem-1" aria-expanded="true" aria-controls="elem-1">
                                                Collapsible Group Item #1
                                            </button>
                                        </h2>
                                    </div>

                                    <div id="elem-1" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
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
                                                <tr>
                                                    <td>Mark</td>
                                                    <td>Otto</td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                </tr>
                                                <tr>
                                                    <td>Jacob</td>
                                                    <td>Thornton</td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                <td></td>
                                                </tr>
                                                <tr>
                                                    <td>Larry</td>
                                                    <td>the Bird</td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                </tr>
                                                <tr>
                                                    <td>Larry</td>
                                                    <td>the Bird</td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                </tr>
                                            </tbody>
                                            </table>
                                        </div>
                                    </div>

                            <?php } ?>
                        <?php } ?>
                    <?php endif; ?>
                    <div class="card col-12 pb-2">
                        <div class="card-header" id="headingTwo">
                            <h2 class="mb-0">
                                <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                    Collapsible Group Item #2
                                </button>
                            </h2>
                        </div>
                        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
                            <div class="card-body">
                                Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                            </div>
                        </div>
                    </div>
                    <div class="card col-12 pb-2">
                        <div class="card-header" id="headingThree">
                            <h2 class="mb-0">
                                <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                    Collapsible Group Item #3
                                </button>
                            </h2>
                        </div>
                        <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
                            <div class="card-body">
                                Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                            </div>
                        </div>
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
                    <div class="col-md-2">
                        <img class="img-paking" src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/pkg1.png"" alt="">
                        <h5 class="description-paking white f-300"> <b>STAND-UP GUSSETED POUCH </b>CUSTOM PRINTED </h5>
                    </div>
                    <div class="col-md-2">
                        <img  class="img-paking" src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/pkg2.png"" alt="">
                        <h5 class="description-paking white f-300"> <b>STAND-UP GUSSETED POUCH </b>GENERIC WITH LABEL </h5>
                    </div>
                    <div class="col-md-2 pl-5">
                        <img  class="img-paking" src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/pkg3.png"" alt="">
                        <h5 class="description-paking white f-300"> <b>STICK <br> PACK </b></h5>
                    </div>
                    <div class="col-md-2 pl-5 ">
                        <img  class="img-paking" src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/pkg4.png"" alt="">
                        <h5 class="description-paking white f-300"> <b>PLASTIC <br> TUBES</b> </h5>
                    </div>
                    <div class="col-md-2">
                        <img  class="img-paking" src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/pkg5.png"" alt="">
                        <h5 class="description-paking white f-300"> <b>PET <br>CANISTER</b> </h5>
                    </div>
                    <div class="col-md-2">
                        <img class="img-paking" src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/pkg6.png"" alt="">
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
                        <p class="content-p text-justify">Every OMG product is certified USDA Organic and Kosher.  We are able to expand to offer Project non-GMO Certification as well as other certifications that are required by your consumers.  All of our products are produced in GFSI audited facilities.</p>
                    </div>
                    <div class="col-md-12 text-center pb-5">
                        <img style="width: 60%" src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/certifications.png" alt="certifications">
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

    </script>
<?php get_footer() ?>