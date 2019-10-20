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
                            Display Employee Information
                        </h1>
                        <ol class="breadcrumb">
                            <li>
                                <i class="fa fa-dashboard"></i>  <a href="index.html">Dashboard</a>
                            </li>
                            <li class="active">
                                <i class="fa fa-table"></i> Display Employee
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
                                        <th>Eid</th>
                                        <th>Employee User Name</th>
                                        <th>First Name</th>
                                         <th>Last Name</th>
                                         <th>date of join</th>
                                         <th>Salary</th>
                                         <th>Edit</th>
                                        <th>Delete</th>
                                      
                                    </tr>
                                </thead>
                                <tbody>
                                      <c:forEach items="${employee}" var="employee">
                                       <tr>
                                        <td>${employee.eid}</td>
                                        <td>${employee.eusername}</td>
                                        <td>${employee.firstname} </td>
                                        <td>${employee.lastname}</td>
                                        <td>${employee.joinningdate}</td>
                                        <td>${employee.salary}</td>
                                       
                                       
                                        <td><a href="EditEmployee?eid=${employee.eid}">E</td>
                                        <td><a href="DeleteEmployee?eid=${employee.eid}">D</a></td>
<!--                                        <td<a href="ShowTransaction?eid={employee.eid}">T<a/></td>
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
