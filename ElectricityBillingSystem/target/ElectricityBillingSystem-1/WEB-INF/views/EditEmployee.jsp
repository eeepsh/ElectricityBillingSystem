<%@include  file="header.jsp" %>    
    <%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        <div id="page-wrapper">

            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Edit Employee
                        </h1>
                        <ol class="breadcrumb">
                            <li>
                                <i class="fa fa-dashboard"></i>  <a href="index.html">Dashboard</a>
                            </li>
                            <li class="active">
                                <i class="fa fa-edit"></i> Edit Employee
                            </li>
                        </ol>
                    </div>
                </div>
                <!-- /.row -->

                <div class="row">
                    <div class="col-lg-6">

                        <form role="form" action="UpdateEmployee" method="POST">
                            <input class="form-control" name="eid" value="${employee.eid}" >

                            

                            <div class="form-group">
                                 <label>Enter User Name</label>
                                <input class="form-control" name="eusername" value="${employee.eusername}" >
                                <p class="help-block">Example block-level help text here.</p>
                            </div>
                            
                             <div class="form-group">
                                <label>Enter First Name</label>
                                <input class="form-control" name="firstname" value="${employee.firstname}" >
                                <p class="help-block">Example block-level help text here.</p>
                            </div>
                            
                             <div class="form-group">
                                <label>Enter Last Name<</label>
                                <input class="form-control" name="lastname" value="${employee.lastname}" >
                                <p class="help-block">Example block-level help text here.</p>
                            </div>
                                
                                <div class="form-group">
                                <label>Date Of Join<</label>
                                <input class="form-control" name="joinningdate" type="date" value="${employee.joinningdate}" >
                                <p class="help-block">Example block-level help text here.</p>
                            </div>
                                
                                <div class="form-group">
                                <label>Salary<</label>
                                <input class="form-control" name="salary" value="${employee.salary}" >
                                <p class="help-block">Example block-level help text here.</p>
                            </div>
                                
                                

                            <button type="submit" name="insert" class="btn btn-default">Submit Button</button>
                            <button type="reset" class="btn btn-default">Reset Button</button>

                        </form>

                    </div>
                  
                </div>
                <!-- /.row -->

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- /#page-wrapper -->

<jsp:include page="footer.jsp"/>


