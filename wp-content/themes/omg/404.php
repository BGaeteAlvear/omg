<?php
/*
Template Name: 404
*/
?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!-- BOOTSTRAP -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Heebo:100,300,400,500,700,800,900">
    <title>OMG! 404 | Not found</title>


    <style>
        html, body{
            margin : 0;
            font-family: 'Heebo';
        }

        h1, h2, h3, h4, h5, h6 {
            font-family: 'Heebo';
        }

        body{
            background-image:linear-gradient(rgba(0,0,0,0.6), rgba(0,0,0,0.9)),url(<?php echo get_stylesheet_directory_uri(); ?>/assets/img/resourses/bg_404.jpg);
            height: 100vh;
            background-color: #008145;
            background-position: 50%;
            background-repeat: no-repeat;
            background-size: cover;
            color: white;
            position: relative;
        }

        .only_404{
            background-image:url(<?php echo get_stylesheet_directory_uri(); ?>/assets/img/resourses/404.svg);
            height: 100vh;
            background-position: 50%;
            background-repeat: no-repeat;
            background-size: 80%;
            color: white;
            position: relative;
            padding: 30px;
        }

        h1{
            font-size :95px;
            font-weight: 100;
            letter-spacing: 3px;
        }

        .to_bottom{
            margin: 23% auto auto;
            /*margin: auto;*/
        }
        .btn{
            letter-spacing: 2px;
            font-weight: 300;
            text-transform: uppercase;
            color: green;
            border-radius: 100px;
        }
        a {
            color: green;
        }

        @media (max-width: 1024){
            h1 {
                font-size: 60px!important;
                font-weight: 100;
                letter-spacing: 3px;
            }
        }

        p{
            font-weight: 900; font-size: 40px;
        }
        @media (max-width: 1440px) {
            h1{
                font-size :36px;;
            }
            p{
                font-size: 26px;
            }
            .btn-lg{
                font-size:1rem !important;
            }
        }

    </style>
</head>
<body>
<div class="only_404">
    <div class="">
        <a class="navbar-brand" href="<?php echo get_home_url() ?>">
            <img class="icon-logo-header" width="120px"
                 src="<?php echo get_stylesheet_directory_uri() ?>/assets/images/logo omg.png">
        </a>
        <div style="">
            <div class="text-center" style="display: flex;">
                <div class="to_bottom">
                    <h1>
                        <span style="font-weight: 900">Sorry,</span> the page not found!
                    </h1>
                    <p style="font-weight: 900; font-size: 40px;">Please try again</p>
                    <a href="<?php echo get_home_url() ?>" class="btn btn-primary btn-light btn-lg px-5">
                        back to home
                    </a>
                </div>

            </div>
        </div>
    </div>

</body>
</html>
