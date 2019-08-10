<?php
/*
Template Name: Contact Us Page
*/
?>
<?php get_header() ?>
<?php the_post() ?>
    <section class="private-label mb-5" style="margin-top: 15%">
        <div class="container">

            <div class="row">
                <div class="col-md-12">
                    <h1 class="title-private-label-page blue f-300">GET  <b class="f-700">IN TOUCH</b></h1>
                </div>
                <div class="col-md-9 mb-5">
                    <div class="place row">
                        <div class="col-md-6">
                            <span><i class="fa fa-map-marker" aria-hidden="true"></i><h5 class="f-300"><b class="f-700">2373 E. Pacifica Place</b> ,<br>Rancho Dominguez, CA, 90220.</h5></span>
                        </div>
                        <div class="col-md-6">
                            <span><i class="fa fa-volume-control-phone" aria-hidden="true"></i><h5 class="f-300"><b class="f-700">855-OMG-FOOD</b> ,<br>(664-3663)</h5>
                        </span>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3313.581256935438!2d-118.22577158530638!3d33.84890803586636!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80dd34be767eb2cf%3A0x51eb09283c2f9e70!2s2373+E+Pacifica+Pl%2C+Compton%2C+CA+90220%2C+EE.+UU.!5e0!3m2!1ses!2scl!4v1562758812845!5m2!1ses!2scl" width="100%" height="450px" frameborder="0" style="border:0" allowfullscreen></iframe>
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