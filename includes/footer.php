<footer>
    <div class="w3ls-footer-grids pt-sm-4 pt-3">
      <div class="container py-xl-5 py-lg-3">
        <div class="row">
          <div class="col-md-4 w3l-footer">
            <h2 class="mb-sm-3 mb-2">
              <a href="index.php" class="text-white font-italic font-weight-bold">
                <span>Red</span>Wings
                <i class="fas fa-syringe ml-2"></i>
              </a>
            </h2>
            <p>Red Wings is a Blood Bank and Donor Management System is a web-based application. 
              The persons who like to donate blood register in the Blood Bank application.  
              The persons in need of blood search for the persons having the same blood group and within the city.  
              If he found a donor in his city then he gets the total details of the donor,
              if he doesn’t find any donor then he is given the contact numbers and addresses of the Life-Saving Contact Persons for major cities.</p>
          </div>
          <div class="col-md-4 w3l-footer my-md-0 my-4">
            <!-- <h4 class="mb-sm-3 mb-2 text-white">Meet in Person : Kumaraguru College of Technology,  Athipalayam Rd, Chinnavedampatti, Coimbatore, Tamil Nadu 641049</h4> -->
            <ul class="list-unstyled">
              <?php 
$pagetype="contactus";
$sql = "SELECT * from tblcontactusinfo";
$query = $dbh -> prepare($sql);
$query->bindParam(':pagetype',$pagetype,PDO::PARAM_STR);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
$cnt=1;
if($query->rowCount() > 0)
{
foreach($results as $result)
{ ?>
              <li>
                <i class="fas fa-location-arrow float-left"></i>
                <p class="ml-4">
                  <span><?php  echo $result->Address; ?>. </p>
                <div class="clearfix"></div>
              </li>
              <li class="my-3">
                <i class="fas fa-phone float-left"></i>
                <p class="ml-4"><?php  echo $result->ContactNo; ?></p>
                <div class="clearfix"></div>
              </li>
              <li>
                <i class="far fa-envelope-open float-left"></i>
                <a href="mailto:info@example.com" class="ml-3"><?php  echo $result->EmailId; ?></a>
                <div class="clearfix"></div>
              </li>
            <?php } } ?></ul>
          </div>
          <div class="col-md-4 w3l-footer">
            <h3 class="mb-sm-3 mb-2 text-white">Quick Links</h3>
            <div class="nav-w3-l">
              <ul class="list-unstyled">
                <li>
                  <a href="index.php">Home</a>
                </li>
                <li class="mt-2">
                  <a href="about.php">About Us</a>
                </li>
                <li class="mt-2">
                  <a href="contact.php">Contact Us</a>
                </li>
            
              </ul>
            </div>
          </div>
        </div>
        <div class="border-top mt-5 pt-lg-4 pt-3 pb-lg-0 pb-3 text-center">
          <p class="copy-right-grids mt-lg-1">©  Blood Bank Donor Management System
           
          </p>
        </div>
      </div>
    </div>
  </footer>
  <!-- //footer -->