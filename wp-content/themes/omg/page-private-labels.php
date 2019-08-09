<?php
/*
Template Name: Products Private Labels
*/
?>
<?php get_header() ?>

    <section>
        <div class="row no-gutters">
            <div class="col-md-12">
                <div class="header-products-bg"
                     style="background-image:linear-gradient(rgba(0,0,0,0.7), rgba(0,0,0,0.5)),url(<?php echo get_stylesheet_directory_uri(); ?>/assets/img/resourses/img2.jpg?h=382507266d1002eb9e7e127b3635f319);">
                    <div class="p-5 mb-0 text-white" style="bottom:0;position:absolute;">
                        <h2 class="extrabold font-100 pl-md-5 wow fadeIn"  data-wow-duration="2s">Products</h2>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section>
        <div class="row no-gutters">

            <?php
            $taxonomy = 'category';
            $terms = get_terms($taxonomy);

            if ($terms && !is_wp_error($terms)) :
                ?>

                <?php foreach ($terms as $term) { ?>

                    <?php if($term->slug !='other-products'){ ?>
                        <?php $catIMGId = get_field('image', 'term_' . $term->term_id); ?>

                        <div class="col-125 wow fadeIn"  data-wow-duration="2s">
                            <div class="cat-gallery"
                                 style="background-image:linear-gradient(rgba(0,0,0,0.3), rgba(0,0,0,0.4)),url(<?php echo $catIMGId ?>">
                                <div class="content-box-product">
                                    <h3 class="bold text-left title-product-box"><?php echo $term->name; ?></h3>
                                    <p class="mt-3 text-center pbutton">
                                        <button class="btn btn-primary btn-round px-4"
                                                onclick="showBox('<?php echo $term->slug; ?>')">SEE MORE
                                        </button>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <!--                        <li><a href="--><?php //echo get_term_link($term->slug, $taxonomy); ?><!--">--><?php //echo $term->name; ?><!--</a></li>-->

                     <?php } ?>
                <?php } ?>

                <?php foreach ($terms as $term) { ?>

                <?php if($term->slug =='other-products'){ ?>
                    <?php $catIMGId = get_field('image', 'term_' . $term->term_id); ?>

                    <div class="col-125 wow fadeIn"  data-wow-duration="2s">
                        <div class="cat-gallery"
                             style="background-image:linear-gradient(rgba(0,0,0,0.3), rgba(0,0,0,0.4)),url(<?php echo $catIMGId ?>">
                            <div class="content-box-product">
                                <h3 class="bold text-left title-product-box"><?php echo $term->name; ?></h3>
                                <p class="mt-3 text-center pbutton">
                                    <button class="btn btn-primary btn-round px-4"
                                            onclick="showBox('<?php echo $term->slug; ?>')">SEE MORE
                                    </button>
                                </p>
                            </div>
                        </div>
                    </div>
                    <!--                        <li><a href="--><?php //echo get_term_link($term->slug, $taxonomy); ?><!--">--><?php //echo $term->name; ?><!--</a></li>-->

                <?php } ?>
                <!--                        <li><a href="--><?php //echo get_term_link($term->slug, $taxonomy); ?><!--">--><?php //echo $term->name; ?><!--</a></li>-->
            <?php } ?>

            <?php endif; ?>

        </div>
    </section>
    <section class="py-5 my-4">
        <div class="container" id="products">
            <?php
            if ($terms && !is_wp_error($terms)) :
                ?>

                <?php foreach ($terms as $term) { ?>

                <div class="row box-cats" id="box_<?php echo $term->slug; ?>" style="display: none;"
                     data-slug="<?php echo $term->slug; ?>">
                    <div class="col-md-12">
                        <h1 class="main-color font-75 black  wow fadeIn"  data-wow-duration="2s"><?php echo $term->name; ?></h1>
                    </div>
                    <div class="col-md-12">
                        <div class="row py-5">

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
                            );
                            ?>

                            <?php foreach ($posts_array as $post) { ?>

                                <?php
//                                if (has_post_thumbnail($post->ID)) {
//                                    $image = wp_get_attachment_image_src(get_post_thumbnail_id($post->ID), 'thumbnail');
//                                }

                                $fields = get_fields($post->ID);
                               // echo var_dump($post);
                                ?>

                                <div class="col-md-3  wow fadeIn"  data-wow-duration="2s">
                                    <div class="product-box" style="position: relative;">
                                        <div class="detail-product-hover">
                                            <a class="btn btn-primary btn-round" style="margin: auto;" href="<?php echo get_permalink($post->ID);?>">SEE MORE</a>
                                        </div>
                                        <img  src="<?php echo $fields['image']; ?>">
                                    </div>
                                    <p class="p-2 black font-26"><?php echo $post->post_title; ?></p>
                                </div>
                            <?php } ?>

                            <!--                            <div class="col-md-3">-->
                            <!--                                <div class="product-box"><img-->
                            <!--                                            src="-->
                            <?php //echo get_stylesheet_directory_uri(); ?><!--/assets/img/resourses/g4.jpg?h=6a9fa2d7bac4bc25c9c809bbb0dd9330">-->
                            <!--                                </div>-->
                            <!--                                <p class="p-2 black font-26">Coconut Shredded</p>-->
                            <!--                            </div>-->
                            <!--                            <div class="col-md-3">-->
                            <!--                                <div class="product-box"><img-->
                            <!--                                            src="-->
                            <?php //echo get_stylesheet_directory_uri(); ?><!--/assets/img/resourses/g2.jpg?h=63fe5fc1df892269e0b487724091c736">-->
                            <!--                                </div>-->
                            <!--                                <p class="p-2 black font-26">Coconut Shredded</p>-->
                            <!--                            </div>-->
                            <!--                            <div class="col-md-3">-->
                            <!--                                <div class="product-box"><img-->
                            <!--                                            src="-->
                            <?php //echo get_stylesheet_directory_uri(); ?><!--/assets/img/resourses/g1.jpg?h=cd12b9910172a0e1d89d4787780f8521">-->
                            <!--                                </div>-->
                            <!--                                <p class="p-2 black font-26"><strong>Coconut Shredded</strong><br><strong>Organic</strong>-->
                            <!--                                </p>-->
                            <!--                            </div>-->
                            <!--                            <div class="col-md-3">-->
                            <!--                                <div class="product-box"><img-->
                            <!--                                            src="-->
                            <?php //echo get_stylesheet_directory_uri(); ?><!--/assets/img/resourses/g3.jpg?h=63fe5fc1df892269e0b487724091c736">-->
                            <!--                                </div>-->
                            <!--                                <p class="p-2 black font-26">Coconut Shredded</p>-->
                            <!--                            </div>-->
                        </div>
                    </div>
                </div>
            <?php } ?>

            <?php endif; ?>
            <!--            <div class="row">-->
            <!--                <div class="col-md-12">-->
            <!--                    <h1 class="main-color font-75 black">Coconut Products</h1>-->
            <!--                </div>-->
            <!--                <div class="col-md-12">-->
            <!--                    <div class="row py-5">-->
            <!--                        <div class="col-md-3">-->
            <!--                            <div class="product-box"><img-->
            <!--                                        src="-->
            <?php //echo get_stylesheet_directory_uri(); ?><!--/assets/img/resourses/g4.jpg?h=6a9fa2d7bac4bc25c9c809bbb0dd9330">-->
            <!--                            </div>-->
            <!--                            <p class="p-2 black font-26">Coconut Shredded</p>-->
            <!--                        </div>-->
            <!--                        <div class="col-md-3">-->
            <!--                            <div class="product-box"><img-->
            <!--                                        src="-->
            <?php //echo get_stylesheet_directory_uri(); ?><!--/assets/img/resourses/g2.jpg?h=63fe5fc1df892269e0b487724091c736">-->
            <!--                            </div>-->
            <!--                            <p class="p-2 black font-26">Coconut Shredded</p>-->
            <!--                        </div>-->
            <!--                        <div class="col-md-3">-->
            <!--                            <div class="product-box"><img-->
            <!--                                        src="-->
            <?php //echo get_stylesheet_directory_uri(); ?><!--/assets/img/resourses/g1.jpg?h=cd12b9910172a0e1d89d4787780f8521">-->
            <!--                            </div>-->
            <!--                            <p class="p-2 black font-26"><strong>Coconut Shredded</strong><br><strong>Organic</strong>-->
            <!--                            </p>-->
            <!--                        </div>-->
            <!--                        <div class="col-md-3">-->
            <!--                            <div class="product-box"><img-->
            <!--                                        src="-->
            <?php //echo get_stylesheet_directory_uri(); ?><!--/assets/img/resourses/g3.jpg?h=63fe5fc1df892269e0b487724091c736">-->
            <!--                            </div>-->
            <!--                            <p class="p-2 black font-26">Coconut Shredded</p>-->
            <!--                        </div>-->
            <!--                    </div>-->
            <!--                </div>-->
            <!--            </div>-->
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