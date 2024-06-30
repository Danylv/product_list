<?php

$conn = mysqli_connect("localhost", "root", "", "product_list");
      if(!$conn){
          echo "<p>Connection to database failed!</p>";
          die("Failed connect".mysqli_connect_error());
      } else {
          //echo "<p>Connection to database succesfull</p>";
      }

?>