<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  
<head>
    <title>Enquiry Management System</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
    <meta name="description" content="Blue Moon - Responsive Admin Dashboard" />
    <meta name="keywords" content="Notifications, Admin, Dashboard, Bootstrap3, Sass, transform, CSS3, HTML5, Web design, UI Design, Responsive Dashboard, Responsive Admin, Admin Theme, Best Admin UI, Bootstrap Theme, Wrapbootstrap, Bootstrap, bootstrap.gallery" />
    <meta name="author" content="Bootstrap Gallery" />
    <link rel="shortcut icon" href="img/fav.ico">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/new.css" rel="stylesheet"> 
    <link href="css/charts-graphs.css" rel="stylesheet">
    <link href="fonts/font-awesome.min.css" rel="stylesheet">
    <link href="css/jquery.dataTables.min.css" rel="stylesheet">
  
    <script type="text/javascript" src="js/jquery-1.12.4.min.js"></script> 
    <script type="text/javascript" src="js/bootbox.min.js"></script> 
    <link rel="stylesheet" href="/vendor/formvalidation/css/formValidation.min.css">
    <!-- FormValidation plugin and the class supports validating Bootstrap form -->
    <script src="vendor/formvalidation/js/formValidation.min.js"></script>
    <script src="vendor/formvalidation/js/framework/bootstrap.min.js"></script>
        <style type="text/css">
      .field-error .control-label,
      .field-error .help-block,
      .field-error .form-control-feedback {
          color: #ff0039;
      }

      .field-success .control-label,
      .field-success .help-block,
      .field-success .form-control-feedback {
          color: #009926;
      }
        body
    {
        counter-reset: Serial;           /* Set the Serial counter to 0 */
    }

    table
    {
        border-collapse: separate;
    }

    tr td:first-child:before
    {
      counter-increment: Serial;      /* Increment the Serial counter */
      content: counter(Serial); /* Display the counter */
    }
      </style>
  </head>

  <body>

      <jsp:include page="header.jsp"/>

    <!-- Main Container start -->
    <div class="dashboard-container">

      <div class="container">
         
          <jsp:include page="navbar.jsp" />
           <script>
                                    $(function() {
                       $('#user').addClass('active');
                     });

          </script> 

        <!-- Sub Nav End -->
        <div class="sub-nav hidden-sm hidden-xs">
          <ul>
            <li><a  class="heading">User</a></li>
       
          </ul>
    
        </div>
        <!-- Sub Nav End -->

        <!-- Dashboard Wrapper Start -->
        <div class="dashboard-wrapper">
          
           
           <!-- Row Start -->
          <div class="row">
            <div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
              <div class="widget">
                <div class="widget-header">
                  <div class="title">Add Users</div>
                
                </div>
                <div class="widget-body">
                  <div class="widget-body">
                      <form id="userform" class="form-horizontal no-margin" method="post" action="SubmitAddUser">
                        <h5>   <div class="form-group">
                            <label class="col-xs-3 control-label">Username</label>
                            <div class="col-xs-7">
                                <input type="text" class="form-control" name="username" placeholder="Enter Username" />
                            </div>
                           
                        </div>
                    
                        <div class="form-group">
                                
                                <label class="col-md-3 control-label">Password</label>
                                <div class="col-md-7">
                                    <input type="password" class="form-control" name="password" placeholder="Enter Password" id="demo"/>
                                </div>
                               
                         </div>
                        <div class="form-group">
                                
                                <label class="col-md-3 control-label">Confirm Password</label>
                                <div class="col-md-7">
                                    <input type="password" class="form-control" name="confirmpassword" placeholder="Enter Confirm Password"/>
                                </div>
                               
                         </div>
                        </h5>
                      
                     <div class="form-group">
                                            <div class="col-md-6 col-md-offset-3">
                                            <button class="btn btn-primary btn-lg" type="submit"><i class="icon-envelope"></i> Submit</button>
                                            <button class="btn btn-default btn-lg" type="reset">Reset</button>
                                            </div>
                     </div>
                </form>
                  </div>
                    
                </div>
              </div>
            </div>
              
            <div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
              <div class="widget">
                <div class="widget-header">
                  <div class="title">Display Users</div>
                
                </div>
                <div class="widget-body" style="overflow-x:auto;">
                      <table class="table table-condensed table-striped table-hover table-bordered pull-left" id="myTable">
                        
                        <thead>
                          <tr>
                              <th >
                              S.No.
                            </th>
                            <th >
                              User Id
                            </th>
                            <th >
                              Username
                            </th>
                            <th >
                              Password
                            </th>
                            <th >
                              Edit
                            </th>
                            <th >
                              Delete
                            </th>
                          </tr>
                        </thead>
                        <tbody>
                         <c:forEach items="${userdata}" var="User">
                                        <tr >
                                          <td></td>
                                          <td>${User.uid}</td>   
                                          <td>${User.username}</td>
                                          <td>${User.password}</td>
                                          <td>
                                              
                                              <a class="btn btn-primary btn-xs" data-toggle="modal" href="EditUser?uid=${User.uid}&&password=${User.password}" data-target="#Modal" >
                                                    &nbsp;Edit &nbsp; <span class="fa fa-info-circle"></span> </a>
                                          </td>
                                          <td>
                                              <a class="btn btn-danger btn-xs" data-href="DeleteUser?uid=${User.uid}" data-toggle="modal" data-target="#confirm-delete">
                                                    &nbsp; Delete &nbsp; <span class="fa fa-times-circle"></span> </a>
                                          </td>
                                        </tr>
                         </c:forEach>
                          
                        </tbody>
                      </table>
                      <div class="clearfix">
                      </div>
                    
                </div> 
              </div>
              </div>
          </div>
          <!-- Row End -->
          
<!--          Modal-->
           <div class="modal fade" id="Modal" tabindex="-1" role="dialog" aria-labelledby="Login" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                   
                    </div>
                </div>
            </div>
            
            <div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog" style="width: 30% " >
                    <div class="modal-content">
                        <center>
                        <div class="modal-header">
                        <h4><b>Are you sure you want to Delete ? </b></h4>
                        </div>
                        <div class="modal-body">
                            <a class="btn btn-danger btn-ok">Delete</a></button>&nbsp;&nbsp;&nbsp;&nbsp;
                            <button type="button" class="btn btn-primary" data-dismiss="modal">Cancel </button>
                        </div>
                        </center>
                    </div>
                </div>
            </div>
        </div>
        <!-- Dashboard Wrapper End -->

        <jsp:include page="footer.jsp"/>

      </div>
    </div>
    <!-- Main Container end -->

    <script src="js/wysi/wysihtml5-0.3.0.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/wysi/bootstrap3-wysihtml5.js"></script>
    <script src="js/jquery.scrollUp.js"></script>
    <script src="js/jquery.dataTables.min.js"></script>
    <!-- Color Picker -->
    <script src="js/color-picker/jquery.minicolors.js"></script>
     <script src="js/dataTables.responsive.min.js"></script>
    <!-- Custom JS -->
    <script src="js/menu.js"></script>
  
<script>
$(document).ready(function(){
    $('#myTable').dataTable();
});
</script>

<script src="js/hideShowPassword.min.js"></script>

<script>
	$('#demo').hideShowPassword({
	  innerToggle: true
	});
        $('#Modal').on('hidden.bs.modal', function () {
          location.reload();
        });
        $('#confirm-delete').on('hidden.bs.modal', function () {
                                        location.reload();
                                      });  
    
        $('#confirm-delete').on('show.bs.modal', function(e) {
        $(this).find('.btn-ok').attr('href', $(e.relatedTarget).data('href'));
            });  
</script>
<script>
$(document).ready(function() {
     
    $('#userform')
        .formValidation({
            framework: 'bootstrap',
           
            icon: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
             row: {
            valid: 'field-success',
            invalid: 'field-error'
             },
            fields: {
                     
                username: {
                    
                    validators: {
                        notEmpty: {
                            message: 'The username is required and cannot be empty'
                        }
                        
                    }
                },
                password: {
                    icon:'false',
                    validators: {
                        notEmpty: {
                            message: 'The password is required and cannot be empty'
                        }
                    }
                },
                confirmpassword: {
                validators: {
                     notEmpty: {
                            message: 'The confirm password is required and cannot be empty'
                        },
                    identical: {
                        field: 'password',
                        message: 'The password and confirm password are not same'
                    }
                }
            }
            }
        });
       
});
</script>
  </body>
</html>