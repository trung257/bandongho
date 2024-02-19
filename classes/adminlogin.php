<?php 
  $filepath=realpath(dirname(__FILE__));
    include ($filepath.'/../lib/session.php');
    Session::checklogin();
     include_once ($filepath.'/../lib/database.php');
     include_once ($filepath.'/../helpers/format.php');
 ?>
<?php 
   /**
    * 
    */
   class adminlogin
   {
   	
   	    private $db;
   	    private $fm;
	   	public function __construct()
	   	{
	   		$this->db= new Database();
	   		$this->fm= new Format(); // nó chính là class Format trong thư mục helpers
	   	}
	   	public function login_admin($adminUser,$adminPass)
	   	{
	   		$adminUser=$this->fm->validation($adminUser);
	   		$adminPass=$this->fm->validation($adminPass);

	   		$adminUser=mysqli_real_escape_string($this->db->link,$adminUser);
	   		$adminPass=mysqli_real_escape_string($this->db->link,$adminPass);

	   		if(empty($adminUser)||empty($adminPass)){
	   			 $alert="User Và Pass không được để trống";
	   			 return $alert;

	   		}
	   		else{
	   			$query="SELECT * FROM tbl_admin WHERE adminUser='$adminUser' AND adminPass='$adminPass' LIMIT 1";
	   			$result=$this->db->select($query);
				echo '<pre>';
				echo '</pre>';
				echo '<pre>';
				echo '</pre>';echo '<pre>';
				echo '</pre>';
	   			if($result!=false){
	   				$value=$result->fetch_assoc();
	   				Session::set('adminlogin',true); // phải để tên thành 'adminlogin' cho phiên session này giống với phiên session bên hàm checklogin() của class Session

	   				Session::set('adminId',$value['adminId']);
	   				Session::set('adminUser',$value['adminUser']);
	   				Session::set('adminName',$value['adminName']);

	   				header('Location:index.php');

	   			}
	   			else{
	   				$alert="User and Pass không trùng khớp";
	   				return $alert;
	   			}
	   		}

	   	}
   }
 ?>