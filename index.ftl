<html>
<head><title>ViralPatel.net - FreeMarker Spring MVC Hello World</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript">
       $().ready(function() {    		
       		
       		if($('#forCheckBoxfooter').val() == '10')          
       		{
       			alert('isChecked????');
       			<!-- $('#checkBId').prop('checked',true); -->
       			 $('#checkBId').attr('disabled',true);         			
       			
       		}
       		 
          $('#reset').click(function() { 
          
          $('input[type=date], input[type=checkbox], input[type=text]').each(function () {
            alert($(this).val());
            $(this).val("");
            alert('Reset Done');
       		 });
          });
          
          $('#checkBId').click(function(){
             if($(this).is(':checked'))
             {              
                 $('#forCheckBoxfooter').val('Hello') ;
             }
             else
             {
                 $('#forCheckBoxfooter').val('Hello&Checked') ;
             }
         });
          
          $('#getData').click(function() {  
          $.ajax({
          			url: '/Home/MyAjaxCall/',
          			type: 'GET',
          			dataType: 'JSON',
          			data: {order: 'Client_Call'},
          			success: function(data) {
          			alert('Ajax Call Succeed');
          			}, 
          			error: function(data) {
          			alert('failure Ajax');
          			}
          			
       		 });
          });
                   
        });        
         
</script>
<body>
<div id="header">
<H2>
	<a href="http://viralpatel.net">
	<img height="37" width="236" border="0px" src="http://viralpatel.net/blogs/wp-content/themes/vp/images/logo.png" align="left"/></a>
	Free Marker Spring MVC Hello World
</H2>
</div>

<div id="content">
    
  <fieldset>
  	<legend>Add User</legend>
  <form name="Use1r" action="index.ftl" method="post">
  	Firstname: <input type="text" value="hai" name="firstname" id="firstname" />	<br/>
  	Lastname: <input type="text" name="lastname" id="lastname" />	<br/>
  	<table border="	10" width="50" height="25">
  	<tr>
  	<td>
  	<input type="button" value="   Save   " id="getData" />	
  	</td>
  	</tr>
  	</table
  	
  	<input type="submit" value="   Save form data   "  />  	
  	<input type="reset" value= "Reset AML" id="reset" />
  	<label for = "Only Label">Not Input Type </label>
  	<input type="checkbox" id="checkBId" name="checkBId">
  	
  </form>
  </fieldset>  
  <table class="datatable">
  <tr>  	
  <thead>
  	<th> First Name </th> <th> Last Name </th>
  </thead> 
  </tr>
    <#list model["userList"] as user>
  	<tr>
  		<td>${user.firstname}</td>
  		<td>${user.lastname}</td>
  		<td><input type="text" id="forCheckBox" name="forCheckBox" 
  		value = ${user.checkValue}>
  		</td>  		
  	</tr>  	
    </#list>
    <tr>
    <input type="text" id="forCheckBoxfooter" name="forCheckBoxfooter" value="10">
    </tr>
  </table>

</div>  
</body>
</html> 