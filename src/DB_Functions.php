<?php
require_once 'Database.php';
$db = new DataBase();
$conn = $db->getConnection();

function select_limit($table,$order,$limit)
{
    global $conn;
    $query = "SELECT * FROM $table ORDER BY id $order LIMIT $limit";
    return mysqli_query($conn,$query);
}