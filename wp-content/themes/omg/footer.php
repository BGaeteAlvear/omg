<footer>
    <div class="row no-gutters">
            <div class="container text-white pb-5">
                <div class="row">
                    <div class="col-md-12 col-lg-3  container-logo-footer"><img
                                class="logo-footer"
                                src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/logo-black.svg">
                    </div>
                    <div class="col-md-12 col-lg-8">
                        <div class="row">
                            <div class="col-12">
                                <div class="row pl-5">
                                    <div class="col-12 border-bottom-black">
                                            <?php
                                            wp_nav_menu(array(
                                                'theme_location' => 'footer',
                                                'depth' => 2,
                                                'container' => 'div',
                                                'container_class' => 'float-left',
                                                'container_id' => 'bs-example-navbar-collapse-1',
                                                'menu_class' => 'nav navbar-footer text-left',
                                                'fallback_cb' => 'WP_Bootstrap_Navwalker::fallback',
                                                'walker' => new WP_Bootstrap_Navwalker(),
                                            ));
                                            ?>

                                            <!--                                        <ul class="nav nav-footer float-left">-->
                                            <!--                                            <li class="nav-item float-left"><a class="nav-link active" href="#">HOME</a></li>-->
                                            <!--                                            <li class="nav-item"><a class="nav-link" href="#">ABOUT US</a></li>-->
                                            <!--                                            <li class="nav-item"><a class="nav-link" href="#">PRODUCTS</a></li>-->
                                            <!--                                            <li class="nav-item"><a class="nav-link" href="#">CONTACT US</a></li>-->
                                            <!--                                        </ul>-->
                                            <ul class="nav nav-footer float-right">
                                                <li class="nav-item right text-right"><a class="nav-link mr-0 pr-0"
                                                                                         href="https://www.linkedin.com/company/altalena"><i
                                                                class="fa fa-linkedin fa-2x"
                                                                style="margin-top:-8px;"></i></a></li>
                                            </ul>
                                        </div>
                                    <div class="col">
                                        <p class="mt-3 direction font-16 black"><b>2373 E. Pacifica Place</b>, Rancho Dominguez, CA, 90220 <br>
                                            <a style="color: black" href="tel:+1 (323) 589-1699"> <b>855-OMG-FOOD </b>(644-3663)</a>
                                        </p>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</footer>


<script>


    var wow = new WOW(
        {
            boxClass: 'wow',      // animated element css class (default is wow)
            animateClass: 'animated', // animation css class (default is animated)
            offset: 0,          // distance to the element when triggering the animation (default is 0)
            mobile: true,       // trigger animations on mobile devices (default is true)
            live: true,       // act on asynchronously loaded content (default is true)
            callback: function (box) {
                // the callback is fired every time an animation is started
                // the argument that is passed in is the DOM node being animated
            },
            scrollContainer: null,    // optional scroll container selector, otherwise use window,
            resetAnimation: true,     // reset animation on end (default is true)
        }
    );
    wow.init();


</script>

<script>
    $('.product-gallery').mouseenter(function(){
        $(this).addClass('zoom');
        // $(this).css({'transition': 'all .5s','transform' : 'scale(1.1,1.1)'}).fadeIn();
    });
    $('.product-gallery').mouseleave(function(){
        $(this).removeClass('zoom');
    });

    $('.cat-gallery').mouseenter(function(){
        $(this).addClass('zoom');
        // $(this).css({'transition': 'all .5s','transform' : 'scale(1.1,1.1)'}).fadeIn();
    });
    $('.cat-gallery').mouseleave(function(){
        $(this).removeClass('zoom');
    });

    $('.detail-product-hover').mouseenter(function(){
        $(this).addClass('active');
        // $(this).css({'transition': 'all .5s','transform' : 'scale(1.1,1.1)'}).fadeIn();
    });
    $('.detail-product-hover').mouseleave(function(){
        $(this).removeClass('active');
    });

    function activeSearch(){
        $('#search-bar').addClass('bounceInDown').show();
    }

    function closeSearch() {
        $('#search-bar').addClass('bounceInUp').hide();
    }




</script>

<?php wp_footer() ?>

</body>
</html>