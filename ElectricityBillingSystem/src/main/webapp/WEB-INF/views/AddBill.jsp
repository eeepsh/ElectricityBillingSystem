<%@include  file="header.jsp" %>    
    

        <div id="page-wrapper">

            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Add Bill
                        </h1>
                        <ol class="breadcrumb">
                            <li>
                                <i class="fa fa-dashboard"></i>  <a href="index.html">Dashboard</a>
                            </li>
                            <li class="active">
                                <i class="fa fa-edit"></i> Add Bill
                            </li>
                        </ol>
                    </div>
                </div>
                <!-- /.row -->

                <div class="row">
                    <div class="col-lg-6">
        
         
             <form  role="form" action="SaveBill" method="POST">
                 
                 <div class="form-group">
                          <label>Cdid</label>
                         <input type="text" name="cdid" value="${billdata.cdid}"></td>
                       
                
          
                
               <div class="form-group">
                          <label>Enter Current readings</label>
                         <input type="text" name="currentreadings" title="enter the current reading of customer " ></td>
                         <p class="help-block">Example block-level help text here.</p>
                 </div>
                         
                          <div class="form-group">
                          <label>Previous readings</label>
                         <input type="text" name="previousreadings" value="${bill.get(0).currentreadings}"></td>
                        
                 </div>
                  
                      
                
                
               <div class="form-group">
                          <label>Enter date</label>
                         <input type="date" name="date" title="the date of daa reading day" ></td>
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


