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

                        <form role="form" action="UpdateCustomerData" method="POST">
                            <input class="form-control" name="cdid" value="${customerdata.cdid}" hidden >

                            

                            <div class="form-group">
                                 <label>Enter Customer Name</label>
                                <input class="form-control" name="customername" value="${customerdata.customername}" >
                                <p class="help-block">Example block-level help text here.</p>
                            </div>
                            
                             <div class="form-group">
                                <label>Enter Address</label>
                                <input class="form-control" name="address" value="${customerdata.address}" >
                                <p class="help-block">Example block-level help text here.</p>
                            </div>
                            
                             <div class="form-group">
                                <label>Enter Phone Number</label>
                                <input class="form-control" name="phone" value="${customerdata.phone}" >
                                <p class="help-block">Example block-level help text here.</p>
                            </div>
                                
                                 <div class="form-group">
                                <label>Enter First Name</label>
                                <input class="form-control" name="joinningdate" value="${customerdata.joinningdate}" >
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


