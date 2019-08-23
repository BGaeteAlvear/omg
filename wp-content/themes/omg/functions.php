<?php
/*----------------------------- No mostrar la version de Wordpress dentro del <head> */
function eliminar_version_wordpress()
{
    return '';
}

add_filter('the_generator', 'eliminar_version_wordpress');

/*----------------------------- Eliminar barra de administración */
function quitar_barra_administracion()
{
    return false;
}

add_filter('show_admin_bar', 'quitar_barra_administracion');

/*----------------------------- Eliminar Tags */
add_action('init', 'remove_tags');
function remove_tags()
{
    register_taxonomy('post_tag', array());
}

/*----------------------------- Permito imagen destacada en los Posts */
if (function_exists('add_theme_support'))
    add_theme_support('post-thumbnails');

/*----------------------------- Menús personalizados */
//	register_nav_menus( array(
//		'Menu principal' => 'Menu principal',
//		'Menu footer' => 'Menu footer',
//	));

/*function my_mod_search($query) {
    if ($query->is_search()) {
        $query->query_vars['order'] = 'ASC';
        $query->query_vars['orderby'] = 'post_date';
        $query->query_vars['post_type'] = 'products';
        $query->query_vars['posts_per_page'] = 200;
    }
}*

add_action('parse_query', 'my_mod_search');*/

function template_chooser($template)
{
    global $wp_query;
//    $wp_query->set('posts_per_page', 100);
    $post_type = get_query_var('post_type');
    if( $wp_query->is_search)
    {
        return locate_template('search.php');  //  redirect to archive-search.php
    }
    return $template;
}
add_filter('template_include', 'template_chooser');


//define('ALLOW_UNFILTERED_UPLOADS', true);
function bp_mime_type ( $mime_types ) {
    $mime_types['svg'] = 'image/svg+xml';
    return $mime_types;}

add_filter('upload_mimes', 'bp_mime_type', 1, 1);


if (!function_exists('custom_portafolio')) {

// Register Custom Post Type

    //add_action( 'init', 'custom_portafolio', 0 );
    function custom_portafolio()
    {

        $labels = array(
            'name' => _x('Portafolio', 'Post Type General Name', 'text_domain'),
            'singular_name' => _x('Portafolio', 'Post Type Singular Name', 'text_domain'),
            'menu_name' => __('Portafolio', 'text_domain'),
            'name_admin_bar' => __('Portafolio', 'text_domain'),
            'archives' => __('Portafolio', 'text_domain'),
            'attributes' => __('Atributos', 'text_domain'),
            'parent_item_colon' => __('Padre', 'text_domain'),
            'all_items' => __('Todos', 'text_domain'),
            'add_new_item' => __('Nuevo Portafolio', 'text_domain'),
            'add_new' => __('Agregar Nuevo', 'text_domain'),
            'new_item' => __('Nuevo Portafolio', 'text_domain'),
            'edit_item' => __('Editar Portafolio', 'text_domain'),
            'update_item' => __('Actualizar Portafolio', 'text_domain'),
            'view_item' => __('Ver Portafolio', 'text_domain'),
            'view_items' => __('Ver Portafolios', 'text_domain'),
            'search_items' => __('Buscar Portafolio', 'text_domain'),
            'not_found' => __('No encontrado', 'text_domain'),
            'not_found_in_trash' => __('No encontrado en la papelara', 'text_domain'),
        );
        $args = array(
            'label' => __('Portafolio', 'text_domain'),
            'description' => __('Sección de Portafolio', 'text_domain'),
            'labels' => $labels,
            'supports' => array('title', 'editor', 'custom-fields'),
            'taxonomies' => array('category', 'post_tag'),
            'hierarchical' => true,
            'public' => true,
            'show_ui' => true,
            'show_in_menu' => true,
            'menu_position' => 5,
            'menu_icon' => 'dashicons-media-spreadsheet',
            'show_in_admin_bar' => true,
            'show_in_nav_menus' => true,
            'can_export' => true,
            'has_archive' => true,
            'exclude_from_search' => true,
            'publicly_queryable' => true,
            'capability_type' => 'page',
        );
        register_post_type('portafolio', $args);

    }
}


// Register Custom Post Type
function products()
{

    $labels = array(
        'name' => _x('Products', 'Post Type General Name', 'text_domain'),
        'singular_name' => _x('Product', 'Post Type Singular Name', 'text_domain'),
        'menu_name' => __('Products', 'text_domain'),
        'name_admin_bar' => __('Products', 'text_domain'),
        'archives' => __('Item Archives', 'text_domain'),
        'attributes' => __('Item Attributes', 'text_domain'),
        'parent_item_colon' => __('Parent Item:', 'text_domain'),
        'all_items' => __('All Items', 'text_domain'),
        'add_new_item' => __('Add New Item', 'text_domain'),
        'add_new' => __('Add New', 'text_domain'),
        'new_item' => __('New Item', 'text_domain'),
        'edit_item' => __('Edit Item', 'text_domain'),
        'update_item' => __('Update Item', 'text_domain'),
        'view_item' => __('View Item', 'text_domain'),
        'view_items' => __('View Items', 'text_domain'),
        'search_items' => __('Search Item', 'text_domain'),
        'not_found' => __('Not found', 'text_domain'),
        'not_found_in_trash' => __('Not found in Trash', 'text_domain'),
        'featured_image' => __('Featured Image', 'text_domain'),
        'set_featured_image' => __('Set featured image', 'text_domain'),
        'remove_featured_image' => __('Remove featured image', 'text_domain'),
        'use_featured_image' => __('Use as featured image', 'text_domain'),
        'insert_into_item' => __('Insert into item', 'text_domain'),
        'uploaded_to_this_item' => __('Uploaded to this item', 'text_domain'),
        'items_list' => __('Items list', 'text_domain'),
        'items_list_navigation' => __('Items list navigation', 'text_domain'),
        'filter_items_list' => __('Filter items list', 'text_domain'),
    );
    $args = array(
        'label' => __('Product', 'text_domain'),
        'description' => __('Products List', 'text_domain'),
        'labels' => $labels,
        'supports' => array('title', 'editor'),
        'taxonomies' => array('category'),
        'hierarchical' => true,
        'public' => true,
        'show_ui' => true,
        'show_in_menu' => true,
        'menu_position' => 5,
        'menu_icon' => 'dashicons-cart',
        'show_in_admin_bar' => true,
        'show_in_nav_menus' => true,
        'can_export' => true,
        'has_archive' => false,
        'exclude_from_search' => true,
        'publicly_queryable' => false,
        'capability_type' => 'page',
    );
    register_post_type('products', $args);

}

add_action('init', 'products', 0);

function remove_wysiwyg_post()
{
    //remove_post_type_support('Product', 'editor'); // NO WYSIWYG
    //remove_post_type_support('page', 'editor');
    remove_post_type_support('products', 'editor');
}


function remove_menu_links()
{
    global $submenu;
    //remove_menu_page('upload.php');
    remove_menu_page("edit.php");
    remove_menu_page("edit-comments.php");
    remove_menu_page("index.php");
}


add_action('admin_menu', 'remove_menu_links', 1);
add_action('admin_enqueue_scripts', 'remove_wysiwyg_post', 1);


if (!file_exists(get_template_directory() . '/class-wp-bootstrap-navwalker.php')) {
    // file does not exist... return an error.
    return new WP_Error('class-wp-bootstrap-navwalker-missing', __('It appears the class-wp-bootstrap-navwalker.php file may be missing.', 'wp-bootstrap-navwalker'));
} else {
    // file exists... require it.
    require_once get_template_directory() . '/class-wp-bootstrap-navwalker.php';
}

register_nav_menus(array(
    'primary' => __('Primary Menu', 'altalena'),
    'footer' => __('Footer Menu', 'altalena'),
));

register_sidebar(array(
    'name' => __('Primary Widget Area'),
    'id' => 'widget-name',
    'description' => __('The primary widget area'),
    'before_widget' => '<li id=”%1$s" class="widget-container %2$s”>',
    'after_widget' => '</li>',
    'before_title' => '<h3 class=”widget-title”>',
    'after_title' => '</h3>',
));

function is_post_type($type){
    global $wp_query;
    if($type == get_post_type($wp_query->post->ID))
        return true;
    return false;
}
?>