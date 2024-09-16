<?php
$config = require_once 'src/config.php';
require_once Root_Path . 'src/Database.php';
require_once Root_Path . 'src/Migration.php';
require_once Root_Path . 'src/functions.php';

if (!isset($_GET["page"])) {
    $_GET['page'] = "index";
}

switch ($_GET["page"]) {
    case "index":
        require_once 'views/index.php';
        break;
    case "login":
        require_once 'views/login.php';
        break;
    case "product-details":
        require_once 'views/product-details.php';
        break;
    case "about":
        require_once 'views/about.php';
        break;
    case "blog":
        require_once 'views/blog.php';
        break;
    case "blog-details":
        require_once 'views/blog-details.php';
        break;
    case "cart":
        require_once 'views/cart.php';
        break;
    case "contact":
        require_once 'views/contact.php';
        break;
    case "faq":
        require_once 'views/faq.php';
        break;
    case "checkout":
        require_once 'views/checkout.php';
        break;
    case "forget-password":
        require_once 'views/forget-password.php';
        break;
    case "my-account":
        require_once 'views/my-account.php';
        break;
    case "privacy-policy":
        require_once 'views/privacy-policy.php';
        break;
    case "register":
        require_once 'views/register.php';
        break;
    case "404":
        require_once 'views/404.php';
        break;
    default:
        require_once 'views/404.php';  // Redirect to a 404 page if the page is not found
        break;
}
