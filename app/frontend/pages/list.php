        <hr class="top">
        <div class="container-fluid">
          <div class="row">
    
                <?php
                
                //print_r($product_list);

                foreach ($product_list->values as $product) {
                    echo "<div class='col-lg-3 col-md-4 col-sm-6' col-sx-12><div class='card'><div class='card-body'><div class='card-top'><div class='category'>";
                    echo $product['category'];
                    echo " /</div><input class='form-check-input' type='checkbox'  value='".$product['id']."' name='check_list[]' value='1' id='flexCheckDefault'></div><div class='product-info'><div class='product_title'><b>";
                    echo $product['title'];
                    echo "</b></div><div>";                             
                    echo $product['price'];              
                    echo "$</div><div class='description mt-2 mb-2'>";
                    echo  $product['description'];
                    echo "</div></div></div></div></div>";               
              }
                
                if(isset($_POST['delete'])){
                    $product_list->delete($_POST['check_list']);   
                    echo "<meta http-equiv='refresh' content='1'>"; 
      }
              
                ?>
                                  
          </div>
        </div>
    </form>