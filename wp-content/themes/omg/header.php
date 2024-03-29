<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" <?php language_attributes() ?>>
<head profile="http://gmpg.org/xfn/11">
	<title><?php echo esc_html( get_bloginfo('name'), 1 ); wp_title( '|', true, 'left' ); ?></title>
	<meta http-equiv="content-type" content="<?php bloginfo('html_type') ?>; charset=<?php bloginfo('charset') ?>" />

    <meta name="viewport" content="initial-scale=1, maximum-scale=1">

    <!-- BOOTSTRAP -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Heebo:100,300,400,500,700,800,900">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">

    <!-- SLICK AND ANIMATE -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">
    <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.css" integrity="sha256-3h45mwconzsKjTUULjY+EoEkoRhXcOIU4l5YAw2tSOU=" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick-theme.css" integrity="sha256-etrwgFLGpqD4oNAFW08ZH9Bzif5ByXK2lXNHKy7LQGo=" crossorigin="anonymous" />



    <script src="https://code.jquery.com/jquery-3.4.1.min.js"
            integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
            crossorigin="anonymous"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.js"
            integrity="sha256-NXRS8qVcmZ3dOv3LziwznUHPegFhPZ1F/4inU7uC8h0=" crossorigin="anonymous"></script>

    <script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
            integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
            crossorigin="anonymous"></script>

    <!-- Custom CSS -->
    <link rel="stylesheet" type="text/css" href="<?php bloginfo('stylesheet_url') ?>" />

    <!-- WOW -->
    <script src="<?php echo get_stylesheet_directory_uri(); ?>/js/wow.js" type="text/javascript"></script>
    <script src="<?php echo get_stylesheet_directory_uri(); ?>/js/scripts.js" type="text/javascript"></script>

    <!-- FONTS -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i|Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap" rel="stylesheet">
</head>

<body>

<!-- Seccion header-->
<header>
    <?php
    //LINK BASE
    $link = $_SERVER['PHP_SELF'];
    $file = basename($_SERVER['PHP_SELF']);
    $base = str_replace($file, "", $link);

    ?>

    <div class="col-12 search-container" id="search-bar" style="display: none">
        <div class="container">
            <form role="search" action="<?php echo site_url('/'); ?>" method="get" id="searchform">
                <input type="search" class="col-80 input_search left" placeholder="<?php echo esc_attr_x( 'Search', 'placeholder', 'base' ); ?>" value="<?php echo get_search_query(); ?>" name="s" />
                <button type="submit" style="display: none" class="col-20 right search-submit">
                    <span class="screen-reader-text"><?php echo _e( 'Buscar', 'submit button', 'base' ); ?></span>
                </button>
                <div class="input-group-prepend">
                    <span class="input-group-text"> <i onclick="closeSearch();" class="fa fa-times"></i></span>
                </div>
            </form>
            <span id="error_search" class="help-block"></span>
        </div>
    </div>
    <div id="menu-principal" class="navbar navbar-dark navbar-expand-md bg-dark navigation-clean bg-white fixed-top">
        <div class="container">
            <a class="navbar-brand" href="<?php echo get_home_url() ?>">
                <?php
                if ( is_singular( 'products' ) ) {
                    echo '<img class="icon-logo-header" src="' . get_stylesheet_directory_uri() . '/assets/images/logo-black.svg">';
                }else{
                    echo '<img class="icon-logo-header polvo-3" src="' . get_stylesheet_directory_uri() . '/assets/images/logo-black.svg">';
                    $style = 'navbar-black';
                    $color = '#1b1b1b';
                }
                ?>
            </a>

            <button data-toggle="collapse" id="responsive_menu" class="navbar-toggler" data-target="#navcol-1" style="color: <?php echo $color ?>">
                <i class="fas fa-bars"></i>
            </button>
            <div class="collapse navbar-collapse" id="navcol-1">

                <ul class="nav navbar-nav ml-auto">
                    <?php

                    wp_nav_menu( array(
                        'theme_location'    => 'primary',
                        'depth'             => 2,
                        'container'         => 'div',
                        //'container_class'   => 'collapse nav-item navbar-collapse',
                        'container_id'      => 'bs-example-navbar-collapse-1',
                        'menu_class'        => 'nav navbar-nav ml-auto ' . $style,
                        'fallback_cb'       => 'WP_Bootstrap_Navwalker::fallback',
                        'walker'            => new WP_Bootstrap_Navwalker(),
                    ) );
                    ?>
<!--                    <li class="nav-item" role="presentation"><a class="nav-link active" href="#">HOME</a></li>-->
<!--                    <li class="nav-item" role="presentation"><a class="nav-link" href="#">ABOUT US</a></li>-->
<!--                    <li class="nav-item" role="presentation"><a class="nav-link" href="#">PRODUCTS</a></li>-->
<!--                    <li class="nav-item" role="presentation"><a class="nav-link" href="#">CONTACT US</a></li>-->

                <ul class="nav navbar-nav ml-auto  <?php  echo $style ?>">
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

                        <form class="navbar-form navbar-right navbar-form-search" role="search" action="<?php echo site_url('/'); ?>" method="get">
                            <div class="search-form-container hdn" id="search-input-container">
                                <div class="search-input-group">
                                    <button type="button" class="btn btn-default close-search" id="hide-search-input-container"><span class="fas fa-times" aria-hidden="true"></span>
                                    </button>
                                    <div class="form-group">
                                        <!--input type="search" class="form-control search-input" placeholder="Search for..."-->
                                        <input type="search" class="form-control search-input" placeholder="<?php echo esc_attr_x( 'Search', 'placeholder', 'base' ); ?>" value="<?php echo get_search_query(); ?>" name="s" />
                                    </div>

                                </div>

                            </div>

                            <!--button type="submit" class="btn btn-default" id="search-button"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></button-->
                        </form>
                    </div>
                    <li class="nav-item" role="presentation"><div class="nav-link" id="search-button" ><i class="fas fa-search"></i></div></li>
                </ul>
                    <div class="d-xl-none d-lg-none d-md-none d-sm-block-d-xs-block">
                        <form class="navbar-form navbar-right navbar-form-search" role="search" action="<?php echo site_url('/'); ?>" method="get">
                            <div class="search-form-container-mobile" id="search-input-container">
                                <div class="input-group search-mobile">
                                    </button>
                                    <div class="form-group">
                                        <!--input type="search" class="form-control search-input" placeholder="Search for..."-->
                                        <input type="search" class="form-control col-12 search-input-mobile" placeholder="<?php echo esc_attr_x( 'Search', 'placeholder', 'base' ); ?>" value="<?php echo get_search_query(); ?>" name="s" />
                                    </div>

                                </div>

                            </div>

                            <!--button type="submit" class="btn btn-default" id="search-button"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></button-->
                        </form>
                    </div>
            </div>
        </div>
    </div>
</header>

<script>

    function activeSearch(){
        $('#search-bar').addClass('bounceInDown').show();
    }

    function closeSearch() {
        $('#search-bar').addClass('bounceInUp').hide();
    }

    $('.collapse').on('show.bs.collapse ', function () {
        $('#menu-principal').addClass('menu-responsive-active');
        $('#menu-principal').removeClass('menu-responsive-active-transition');
    });


    $('.collapse').on('hidden.bs.collapse ', function () {
        $('#menu-principal').removeClass('menu-responsive-active');
        $('#menu-principal').addClass('menu-responsive-active-transition');
    });


    // search
    (function($) {

        $('#search-button').on('click', function(e) {
            if($('#search-input-container').hasClass('hdn')) {
                e.preventDefault();
                $('#search-input-container').removeClass('hdn')
                return false;
            }
        });

        $('#hide-search-input-container').on('click', function(e) {
            e.preventDefault();
            $('#search-input-container').addClass('hdn')
            return false;
        });

    })(jQuery);


</script>