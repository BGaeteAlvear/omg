<?php
/*
Template Name: Resultados de búsqueda
*/
?>

<?php get_header(); ?>

    <section id="primary" class="content-area">
        <main id="main" class="site-main" role="main">

            <?php if (have_posts()) : ?>

            <section>
                <div class="row no-gutters">
                    <div class="col-md-12">
                        <div class="header-products-bg"
                             style="background-image:linear-gradient(rgba(0,0,0,0.7), rgba(0,0,0,0.5)),url(<?php echo get_stylesheet_directory_uri(); ?>/assets/img/resourses/img2.jpg?h=382507266d1002eb9e7e127b3635f319);">
                            <div class="p-5 mb-0 text-white" style="bottom:0;position:absolute;">
                                <h2 class="extrabold font-100 pl-md-5">Results</h2>
                                <h4 class="subtitle-result-search"><?php printf(__('Search results for: %s', 'base'), '<span>' . esc_html(get_search_query()) . '</span>'); ?></h4>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <section>
                <div class="row no-gutters">
                    <section class="col-md-12">
                        <div class="container">
                            <div class="row">
                                <div class="content-result-search">

                                    <?php if (have_posts()) : while (have_posts()) : the_post(); ?>
                                        <div id="post-<?php the_ID(); ?>" class="posts">
                                            <?php
                                            $fields = get_fields($post->ID);
                                            ?>

                                            <article>
                                                <h4 style="color: #3b9743;"><a style="color: #3b9743;"
                                                                               href="<?php the_permalink(); ?>"
                                                                               title="<?php the_title(); ?>"><?php the_title(); ?></a>
                                                </h4>
                                                <p><?php echo $fields['description']; ?></p>
                                                <p align="right"><a class="btn btn-primary btn-round" href="<?php the_permalink(); ?>">Read More</a></p>
<!--                                                <span class="post-meta">| Date : --><?php //echo date('j F Y'); ?><!--</span>-->
                                            </article><!-- #post -->
                                        </div>
                                    <?php endwhile; ?>
                                    <?php endif; ?>

                                </div>
                            </div>
                        </div>
                    </section>
                    <?php else : ?>
                        <section>
                            <div class="row no-gutters">
                                <div class="col-md-12">
                                    <div class="header-products-bg"
                                         style="background-image:linear-gradient(rgba(0,0,0,0.7), rgba(0,0,0,0.5)),url(<?php echo get_stylesheet_directory_uri(); ?>/assets/img/resourses/img2.jpg?h=382507266d1002eb9e7e127b3635f319);">
                                        <div class="p-5 mb-0 text-white" style="bottom:0;position:absolute;">
                                            <h2 class="extrabold font-100 pl-md-5">Results</h2>
                                            <h4 class="subtitle-result-search"><?php _e('Sorry, but nothing matched your search terms. Please try again with some different keywords.', 'base'); ?></h4>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-12 form-search-page">

                                <form class="form-horizontal" role="search" method="get" class="col-20 margin-center"
                                      action="<?php echo esc_url(home_url('/')); ?>">
                                    <h3 style="padding-left: 1%">New search?</h3>
                                    <div class="form-group">
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control input-404-search" id="inputSearch"
                                                   placeholder="<?php echo esc_attr_x('Search Keywords', 'placeholder', 'base'); ?>"
                                                   value="<?php echo get_search_query(); ?>" name="s">
                                        </div>
                                        <button type="submit" class="btn btn-primary btn-round right btn-search">
                                            <span class="screen-reader-text"><?php echo _e('Search', 'submit button', 'base'); ?></span>
                                        </button>
                                    </div>
                                </form>
                            </div>

                        </section>
                    <?php endif; ?>


        </main><!-- .site-main -->
    </section><!-- .content-area -->

<?php get_footer(); ?>