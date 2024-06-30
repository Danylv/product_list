            <hr class="top">
            <div class="container">
            
               <div class="row align-items-center">
                  <div class="col-2">
                    <label for="skm" class="col-form-label">Title</label>
                  </div>
                  <div class="col-3">
                    <input type="text" id="title" class="form-control" name="title" required="">
                  </div>
              </div>
            
              <br>
            
              <div class="row align-items-center">
                  <div class="col-2">
                    <label for="name" class="col-form-label">Description</label>
                  </div>
                  <div class="col-3">
                      <textarea type="text" id="description" class="form-control" name="description" required=""></textarea>
                  </div> 
              </div>
            
              <br>
            
              <div class="row align-items-center">
                  <div class="col-2">
                    <label for="price" class="col-form-label">Price ($)</label>
                  </div>
                  <div class="col-3">
                    <input type="number" step="0.01" min="0" id="price" class="form-control" name="price" required="">
                  </div> 
              </div>
            
              <br>
            
              <div class="row align-items-center">
                  <div class="col-2">
                    <label for="price" class="col-form-label">Category</label>
                  </div>
                  <div class="col-2">
                    <select class="form-select" id="category" name="category" required="">
<!--                      <option value="" selected>Select category</option>-->
                      <option value="1">Books</option>
                      <option value="2">Games</option>
                      <option value="3">Software</option>
                      <option value="4">Hardtware</option>
                    </select>
                  </div> 
              </div>
            
        </div>
    </form>  
     
    <div class="pb-5"></div>
  
  <?php
      
        if(isset($_POST['submit'])){

                  $product_list->add($_POST['title'], $_POST['description'], $_POST['price'], $_POST['category']);
            
                  header("Location: index.php");
                  die();
      }
      
  ?>
 