<%@include  file="header.jsp" %>    
    

        <div id="page-wrapper">

            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Add Customer Information
                        </h1>
                        <ol class="breadcrumb">
                            <li>
                                <i class="fa fa-dashboard"></i>  <a href="index.html">Dashboard</a>
                            </li>
                            <li class="active">
                                <i class="fa fa-edit"></i> Add Customer
                            </li>
                        </ol>
                    </div>
                </div>
                <!-- /.row -->

                <div class="row">
                    <div class="col-lg-6">
        
         
             <form  role="form" action="SaveCustomerData" method="POST">
                
               <div class="form-group">
                          <label>Enter Customer Name </label>
                       
                         <input type="text" name="customername" title="enter your Customer name" ></td>
                         <p class="help-block">Example block-level help text here.</p>
                 </div>
                
                 <div class="form-group">
                          <label>Enter Customer Address </label>
                       
                         <input type="text" name="address" title="enter Customer Address" ></td>
                         <p class="help-block">Example block-level help text here.</p>
                 </div>
                 
                 <div class="form-group">
                          <label>Enter Customer Phone Number </label>
                       
                         <input type="text" name="phone" title="enter your Customer Phone number" ></td>
                         <p class="help-block">Example block-level help text here.</p>
                 </div>
                 
                 <div class="form-group">
                     <label>Date Of Join</label>
                     <input class="form-control"  type="date" name="joinningdate">
                              
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


