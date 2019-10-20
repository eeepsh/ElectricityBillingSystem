<%-- 
    Document   : DisplayEmployee
    Created on : 2 Jul, 2016, 4:47:56 PM
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
                            Display Customer Information
                        </h1>
                        <ol class="breadcrumb">
                            <li>
                                <i class="fa fa-dashboard"></i>  <a href="index.html">Dashboard</a>
                            </li>
                            <li class="active">
                                <i class="fa fa-table"></i> Display Customer Data
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
                                        <th>Cdid</th>
                                        <th>Customer Name</th>
                                        <th>Customer Address</th>
                                         <th>Customer Phone Number</th>
                                         <th>Date Of Join</th>
                                         <th>Add</th>
                                         <th>Display Bill</th>
                                         <th>Edit</th>
                                        <th>Delete</th>
                                        
                                      
                                    </tr>
                                </thead>
                                <tbody>
                                      <c:forEach items="${customerdata}" var="customerdata">
                                       <tr>
                                        <td>${customerdata.cdid}</td>
                                        <td>${customerdata.customername}</td>
                                        <td>${customerdata.address}</td>
                                        <td>${customerdata.phone}</td>
                                        <td>${customerdata.joinningdate}</td>
                                       
                                        <td><a href="AddBill?cdid=${customerdata.cdid}">Add Bill</a></td>    
                                        <td><a href="DisplayBill?cdid=${customerdata.cdid}">Display Bill</a></td>
                    <td><a href="EditCustomerData?cdid=${customerdata.cdid}">Edit</a></td>
                    <td><a href="DeleteCustomerData?cdid=${customerdata.cdid}">Delete</a></td>
                   
<!--                                        <td<a href="ShowTransaction?eid={admin.aid}">T<a/></td>
                                        -->
                                      </tr>
                                    </c:forEach>
                               
</tbody>
                            </table>
                        </div>
                    </div>
                   
                </div>
                <!-- /.row -->


            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->
<%@ include file="footer.jsp"%>
