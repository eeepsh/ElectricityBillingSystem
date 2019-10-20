<%@include  file="header.jsp" %>    
    

        <div id="page-wrapper">

            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Add Transaction
                        </h1>
                        <ol class="breadcrumb">
                            <li>
                                <i class="fa fa-dashboard"></i>  <a href="index.html">Dashboard</a>
                            </li>
                            <li class="active">
                                <i class="fa fa-edit"></i> Add Transaction
                            </li>
                        </ol>
                    </div>
                </div>
                <!-- /.row -->

                <div class="row">
                    <div class="col-lg-6">
        
         
             <form  role="form" action="SaveBill" method="POST">
                 
                 <div class="form-group">
                          <label>Eid</label>
                         <input type="text" name="cdid" value=""></td>
                       
                 </div>
                
              <div class="form-group">
                          <label>Bid</label>
                         <input type="text" name="cdid" value=""></td>
                       
                 </div>
                 
                 <div class="form-group">
                          <label>Paid Amount</label>
                         <input type="text" name="paidamount" value="" ></td>
                        
                 </div>
                  <div class="form-group">
                          <label>Enter Current date</label>
                         <input type="text" name="dateoftransaction" title="the date of transaction " ></td>
                         <p class="help-block">Example block-level help text here.</p>
                 </div>
                        
                      
                          
                 <button type="submit" name="insert" class="btn btn-default">Submit Button</button>
                  
           </form>

                    </div>
                  
                </div>
                <!-- /.row -->

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- /#page-wrapper -->

<jsp:include page="footer.jsp"/>


