<?php
           
require_once "db_connect.php";

$product_list = new Products;

      class Products
      {
          public $values;
          
          public function __construct() {
              $this->getProducts();
          }          
          
          public function add($title, $description, $price, $category) {
              
              global $conn; 
              
              $sql = "INSERT INTO products (title, description, price, category_id)
              VALUES ('".$title."', '".$description."', '".$price."', '".$category."')";

                  if ($conn->query($sql) === TRUE) {
                      //echo "<p style='color: #06E003'><b>New product added successfully</b></p>";
                    } else {
                      echo "Error: " . $sql . "<br>" . $conn->error;
                    } 
              
          }
          
          public function getProducts() {
            
              global $conn;
              
              $sql = "SELECT products.id, products.title, products.description, products.price, categories.title AS category FROM products LEFT JOIN categories ON products.category_id = categories.id;";
              $result = $conn->query($sql);
              while($row = $result->fetch_assoc()) {
                  
                  $values[] = ['id' => $row['id'],
                                'title' => $row['title'],
                                'description' => $row['description'],
                                'price' => $row['price'],
                                'category' => $row['category'],
                               ];
                  
              }
              return $this->values = $values; 
          }
                   
          public function delete($post) {
              
              global $conn;
              
              if(!empty($post)){
                foreach($_POST['check_list'] as $selected){
                $sql = "DELETE FROM products WHERE id='".$selected."'";
                          if ($conn->query($sql) === TRUE) {
                              //echo "<p><b>DELETED SUCCESFULLY!</b></p>";
  
                            } else {
                              echo "Error: " . $sql . "<br>" . $conn->error;
                            }
                    }
                } else {
                    echo "<b>NO SELECTED</b>";
                }

            }
          
      };