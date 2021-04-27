<?php
$link = new mysqli("mysql_container", "root", "root", "db_fc");

$sql = "select id, nome from db_fc.modules";

// $result = $link->query($sql);

// echo mysqli_num_rows($result);
if ($result = $link->query($sql)) {
    while($obj = $result->fetch_object()){
        echo "----------------------------------";
        echo "id: ". $obj->id . " - Nome: ".$obj->nome;
        echo "<br>";
    }
}
$result->close();
unset($obj);
unset($sql);
?>