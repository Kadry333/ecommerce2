<?php
require_once 'src/DB_Actions/Cart.php';
$db = new DataBase();
$conn = $db->getConnection();
$cart = new Cart($conn);
$id = $_GET['id'];
$products = getrow("products",$id);
$cart->user_id = $_SESSION['auth']['id'];
$cart->product = $products['name'];
$cart->price = $products['price'];
$cart->image = $products['image'];
$res = $cart->create();
if($res)
{
    $_SESSION['cart'] = "added";
}
redirect("product-details");
