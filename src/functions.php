<?php
function dd($data)
{
    echo "<pre>";
    var_dump($data);
    echo "</pre>";
}
function url($path)
{
    return Base_Url."route.php?page=".$path;
    die;
}