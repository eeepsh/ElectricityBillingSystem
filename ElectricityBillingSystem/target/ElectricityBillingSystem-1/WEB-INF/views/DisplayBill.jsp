<%-- 
    Document   : Bill
    Created on : 14 Jul, 2016, 8:38:58 AM
    Author     : Admin
--%>

<%@include file="header.jsp"%>
           <%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


        <div id="page-wrapper">

            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Display Bill
                        </h1>
                        <ol class="breadcrumb">
                            <li>
                                <i class="fa fa-dashboard"></i>  <a href="index.html">Dashboard</a>
                            </li>
                            <li class="active">
                                <i class="fa fa-edit"></i> Display Bill
                            </li>
                        </ol>
                    </div>
                </div>
                <!-- /.row -->

                <div class="row">
                    <div class="col-lg-6">

                        
                            

                            <div class="table-responsive">
                            <table class="table table-bordered table-hover">
                                <thead>
                                    <tr>
                                        <th>Bid</th>
                                        <th>Customer Name</th>
                                        <th>previous Readings</th>
                                         <th>Current Readings</th>
                                         <th>Units</th>
                                        <th>Date</th>
                                        <th>payable Amount</th>
                                        <th>Print Bill</th>
                                      
                                    </tr>
                                </thead>

                 <tbody>
                                      <c:forEach items="${bill}" var="bill">
                                       <tr>
                                        <td>${bill.bid}</td>
                                        <td>${bill.cdid.customername}</td>
                                        <td>${bill.previousreadings}</td>
                                        <td>${bill.currentreadings}</td>
                                        <td>${bill.units}</td>
                                        <td>${bill.date}</td>
                                        <td>${bill.payableamount}</td>
                                       
                                        <td><a href="PrintBill?bid=${bill.bid}">P</a></td>
                                    
                                       
                                      </tr>
                                    </c:forEach>
                               
</tbody>
              </table>
                            <button type="submit" name="print" class="btn btn-default">Submit Button</button>
                            

                     

                    </div>
                  
                </div>
                <!-- /.row -->

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- /#page-wrapper -->

<jsp:include page="footer.jsp"/>



