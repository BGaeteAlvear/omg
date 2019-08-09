<?php
/*
Template Name: Home Page
*/
?>
<?php get_header() ?>

    <section id="sliders" >
        <div class="carousel slide" data-ride="carousel" id="carousel-1"">

            <div class="carousel-inner" role="listbox" >

                <div class="carousel-item active ">
                    <img class="d-block w-100 cover" style="background-image:linear-gradient(rgba(0,0,0,2), rgba(0,0,0,2))" alt="omg" src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/img-home-header.jpg" data-holder-rendered="true" style="margin-top: -90px;">
                </div>

            </div>
            <div class="controls-slide" style="display: none">
                <!-- Start: Previous -->
                <a class="carousel-control-prev" href="#carousel-1" role="button" data-slide="prev"><span class="carousel-control-prev-icon"></span><span class="sr-only">Previous</span></a>
                <!-- End: Previous -->
                <!-- Start: Next -->
                <a class="carousel-control-next" href="#carousel-1" role="button" data-slide="next"><span class="carousel-control-next-icon"></span><span class="sr-only">Next</span></a>
                <!-- End: Next -->
            </div>

        </div>
       <div class="row no-gutters">
           <!--div class="col-12 bg-header-slide pb-0 mb-0"></div-->

           <div class="col-12">
               <div class="text-center"style="margin-top: -476px;">
                   <img style="width: 120px; margin-top: -100px;" src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/omg-home-logo.svg" alt="">
                   <div class="text-header" style="color:white;">
                       <h3>WELCOLME TO <br>
                           A <b>SUPER LIFE</b></h3>
                   </div>

               </div>
           </div>

       </div>
    </section>


    <section class="no-gutters meet-omg mt-5 p-5 mb-5">
        <div class="container">
            <div class="row">
                <div class="col-md-5">
                    <h3 class="meet-omg-title">Meet OMG! <br>
                        <b>Food Company</b></h3>
                </div>
                <div class="col-md-7 px-5">
                    <p class="content-p">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>

                    <a href="#" class="btn btn-primary btn-lg btn-round mt-5">ALL PRODUCTS</a>

                </div>
            </div>
        </div>
    </section>

    <section class="our-brand mt-4 mb-5">
        <div class="container text-center">
            <h3 class="title-omg-brands-home">OMG! <b>BRANDS</b></h3>
            <div class="row">
                <div class="col-md-4 p-4">
                    <img style="width: 100%;" src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/brand-1.jpg" alt="">
                </div>
                <div class="col-md-4 p-4">
                    <img style="width: 100%;"src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/brand-2.jpg" alt="">
                </div>
                <div class="col-md-4 p-4">
                    <img style="width: 100%;" src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/brand-3.jpg" alt="">
                </div>
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
                        OMG! Food Company can help your company design and launch its own Private Brand by tapping into our expertise in package design, product sourcing, and production capabilities.
                    </p>
                    <a href="" class="btn btn-white-inverter mt-3">Read More</a>
                </div>
                <div class="col-md-7">
                    <img  class="p-5 img-private-label"  style="width: 95%" src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/envaces.png" alt="private-label">
                </div>
            </div>

        </div>
    </section>


    <section class="altalena-section mt-5">
        <div class="container p-5">
            <div class="row">
                <div class="col-md-7">
                    <img class="p-5" style="width: 100%" src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/altalena-home.png" alt="omg-altalena-product">
                </div>
                <div class="col-md-5 pt-5">
                    <img style="width: 40%;" class="altalena-logo-omg pb-2" src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/altalena-logo.svg" alt="omg-altalena-logo">
                    <p class="content-p mt-4">Looking for bulk materials? Our sister company, Altalena, offers the finest ingredients with a focus on organic superfoods that are imported directly from their sources. </p>
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
            <div class="no-gutters"  >
                <div class="my-5">
                    <?php the_content() ?>
                    <?php echo do_shortcode( '[contact-form-7 id="5" title="Contact Form"]' ); ?>
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


            elem =  $('.input-style');
            //console.log(elem.val().length);
            if(elem.val().length >0){
                $('#for_'+elem[0].id).addClass('valid');
            }else{
                $('#for_'+elem[0].id).removeClass('valid');
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

    <script>

        function getProductCategory(data) {
            localStorage.setItem('slug',data);
            window.location.href='<?php echo get_site_url(); ?>/products';
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

            prevArrow:'<a class="carousel-control-prev slick-control-prev"><span class="carousel-control-prev-icon slick-prev-custom-icon slick-prev-custom"></span><span class="sr-only">Previous</span></a>',
            nextArrow:'<a class="carousel-control-next slick-control-next"><span class="carousel-control-next-icon slick-next-custom-icon slick-next-custom"></span><span class="sr-only">Next</span></a>',
        });



    </script>

<?php get_footer() ?>