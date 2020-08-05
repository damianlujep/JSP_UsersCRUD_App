
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<%@ include file="/header.jsp" %>

            <!-- Begin Page Content -->
            <div class="container-fluid">

                <!-- Page Heading -->

                <div class="d-sm-flex align-items-center justify-content-between mb-4">
                    <h1 class="h3 mb-0 text-gray-800">Users CRUD</h1>
                    <a href="<c:url value="/users/add"/>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i> Dodaj użytkownika</a>
                </div>

                <!-- DataTales Example -->
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">Lista użytkowników</h6>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                <thead>
                                <tr>
                                    <th style="text-align: center;">id</th>
                                    <th style="text-align: center;">Nazwa użytkownika</th>
                                    <th style="text-align: center;">Email</th>
                                    <<th style="text-align: center;">Akcja</th>
                                </tr>
                                </thead>

                                <tbody>
                                <c:forEach items="${users}" var="users">

                                <tr>
                                    <td style="text-align: center;">${users.getId()}</td>
                                    <td style="text-align: center;">${users.getUserName()}</td>
                                    <td style="text-align: center;">${users.getEmail()}</td>
                                    <td style="text-align: center;">
                                        <a href="<c:url value="/users/delete?id=${users.id}"/>">Usuń &nbsp;&nbsp;</a>
                                        <a href="<c:url value="/users/edit?id=${users.id}"/>">Edytuj &nbsp;&nbsp;</a>
                                        <a href="<c:url value="/users/show?id=${users.id}"/>">Pokaż</a>
                                    </td>


                                </tr>

                                </c:forEach>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- End of Main Content -->

        <!-- Footer -->
        <%@ include file="/footer.jsp" %>

