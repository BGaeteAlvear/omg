<?php
/*
Template Name: Contact Us Page
*/
?>
<?php get_header() ?>
<?php the_post() ?>
    <section>
        <div class="row no-gutters">
            <div class="col-md-12">
                <div class="header-bg"
                     style="background-image:linear-gradient(rgba(0,0,0,0.6), rgba(0,0,0,0.2)),url(<?php echo get_stylesheet_directory_uri(); ?>/assets/img/resourses/contacto.png);">
                    <div class="p-5 mb-0 text-white" style="bottom:0;position:absolute;">
                        <div class="pl-md-5">
                            <h2 class="extrabold font-100 title-contact  wow fadeIn"  data-wow-duration="2s">Contact Us</h2>
                            <h3 class="light font-40 subtitle-contact  wow fadeIn"  data-wow-duration="2s"><b class="semibold">CALL US</b><a style="color: white" href="tel:+1 (323) 589-1699"> +1 (323) 589-1699</a></h3>
                            <h4 class="light font-28 direction-contact  wow fadeIn"  data-wow-duration="2s">2373 E. Pacifica Place, Rancho Dominguez, CA, 90220</h4>
                            <p class="light font-28 email-contact  wow fadeIn"  data-wow-duration="2s"><a class="text-white" href="mailto:contact@altalenawholesale.com">contact@altalenawholesale.com</a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3313.581256935438!2d-118.22577158530638!3d33.84890803586636!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80dd34be767eb2cf%3A0x51eb09283c2f9e70!2s2373+E+Pacifica+Pl%2C+Compton%2C+CA+90220%2C+EE.+UU.!5e0!3m2!1ses!2scl!4v1562758812845!5m2!1ses!2scl" width="100%" height="450px" frameborder="0" style="border:0" allowfullscreen></iframe>
    <div class="col-md-12">
        <div class="container  wow fadeIn"  data-wow-duration="1s" style="z-index: 40">
            <div class="row">

                <div class="card card-awesome"  >
                    <div class="card-body p-5">
                        <div class="p-1 p-md-5" style="padding: 60px">
                            <?php the_content() ?>
                            <?php echo do_shortcode( '[contact-form-7 id="9" title="Contact Us"]' ); ?>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>


    <script>

        $(document).ready(function () {
            $('.input-style').focusout(function () {
                elem = $(this);
                //console.log(elem.val().length);
                if(elem.val().length >0){
                    $('#for_'+elem[0].id).addClass('valid');
                }else{
                    $('#for_'+elem[0].id).removeClass('valid');
                }

            });


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