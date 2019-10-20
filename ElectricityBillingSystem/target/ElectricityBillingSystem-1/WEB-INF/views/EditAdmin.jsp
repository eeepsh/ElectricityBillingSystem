<%@include  file="header.jsp" %>    
    <%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        <div id="page-wrapper">

            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Edit Admin
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

                        <form role="form" action="UpdateAdmin" method="POST">
                            <input class="form-control" name="aid" value="${admin.aid}" >

                            

                            <div class="form-group">
                                 <label>Enter User Name</label>
                                <input class="form-control" name="adminusername" value="${admin.adminusername}" >
                                <p class="help-block">Example block-level help text here.</p>
                            </div>
                            
                             <div class="form-group">
                                <label>Enter First Name</label>
                                <input class="form-control" name="joinningdate" value="${admin.joinningdate}" >
                                <p class="help-block">Example block-level help text here.</p>
                            </div>
                            
                             <div class="form-group">
                                <label>Enter salary</label>
                                <input class="form-control" name="salary" value="${admin.salary}" >
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


