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
                            Display Admin Information
                        </h1>
                        <ol class="breadcrumb">
                            <li>
                                <i class="fa fa-dashboard"></i>  <a href="index.html">Dashboard</a>
                            </li>
                            <li class="active">
                                <i class="fa fa-table"></i> Display Admin
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
                                        <th>Aid</th>
                                        <th>Admin User Name</th>
                                        <th>date of join</th>
                                         <th>Salary</th>
                                         <th>Edit</th>
                                        <th>Delete</th>
                                      
                                    </tr>
                                </thead>
                                <tbody>
                                      <c:forEach items="${admin}" var="admin">
                                       <tr>
                                        <td>${admin.aid}</td>
                                        <td>${admin.adminusername}</td>
                                        <td>${admin.joinningdate}</td>
                                        <td>${admin.salary}</td>
                                       
                                       
                                        <td><a href="EditAdmin?aid=${admin.aid}">E</a></td>
                                        <td><a href="DeleteAdmin?aid=${admin.aid}">D</a></td>
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
