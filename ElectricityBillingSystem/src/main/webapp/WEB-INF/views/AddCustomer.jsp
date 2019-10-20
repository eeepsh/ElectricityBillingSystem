<%@include  file="header.jsp" %>    
    

        <div id="page-wrapper">

            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Add Customer
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
        
         
             <form  role="form" action="SaveCustomer" method="POST">
                
               <div class="form-group">
                          <label>Enter Previous Reading </label>
                         <input type="text" name="previousreadings" title="enter the previous readings" ></td>
                         <p class="help-block">Example block-level help text here.</p>
                 </div>
                
                 <div class="form-group">
                          <label>Enter Current Reading </label>
                         <input type="text" name="currentreading" title="enter the Current readings" ></td>
                         <p class="help-block">Example block-level help text here.</p>
                 </div>
               
               
                 
                 
               
                 <div class="form-group">
                     <label>Date Of Join</label>
                     <input class="form-control"  type="date" name="joinningdate">
                              
                 </div>
                
                 <div class="form-group">
                                <label>Salary</label>
                                <input class="form-control" type="text" name="salary">
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


