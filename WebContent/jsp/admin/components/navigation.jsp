<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <jsp:useBean id="adminSession" class="beans.AdminSession" scope="session" />
 <% String active_menu = (String) request.getAttribute("active_menu"); %>
<div class="navbar-bg"></div>
      <nav class="navbar navbar-expand-lg main-navbar">
        <form class="form-inline mr-auto">
          <ul class="navbar-nav mr-3">
            <li><a href="#" data-toggle="sidebar" class="nav-link nav-link-lg"><i class="ion ion-navicon-round"></i></a></li>
            <li><a href="#" data-toggle="search" class="nav-link nav-link-lg d-sm-none"><i class="ion ion-search"></i></a></li>
          </ul>
          <div class="search-element">
            <input class="form-control" type="search" placeholder="Search" aria-label="Search">
            <button class="btn" type="submit"><i class="ion ion-search"></i></button>
          </div>
        </form>
        <ul class="navbar-nav navbar-right">
          <li class="dropdown"><a href="#" data-toggle="dropdown" class="nav-link dropdown-toggle nav-link-lg">
            <i class="ion ion-android-person d-lg-none"></i>
            <div class="d-sm-none d-lg-inline-block">Chào, <%= adminSession.getFullname() %></div></a>
            <div class="dropdown-menu dropdown-menu-right">
            <!--   <a href="profile.html" class="dropdown-item has-icon">
                <i class="ion ion-android-person"></i> Profile
              </a> -->
              <a href="pageLogin" class="dropdown-item has-icon">
                <i class="ion ion-log-out"></i> Logout
              </a>
            </div>
          </li>
        </ul>
      </nav>
      <div class="main-sidebar">
        <aside id="sidebar-wrapper">
          <div class="sidebar-brand">
            <a href="home">BookStore</a>
          </div>
          <div class="sidebar-user">
            <div class="sidebar-user-picture">
            </div>
            <div class="sidebar-user-details">
              <div class="user-name text-center"><%= adminSession.getFullname() %></div>
              <div class="user-role text-center">
              	<% if( adminSession.getType() == 0 ){ %>
              	 	Supper Admin
              	<%} else if(adminSession.getType() == 1) {%>
              		Admin
              	<%}%>
               
              </div>
            </div>
          </div>
          <ul class="sidebar-menu">
            <li class="menu-header">Dashboard</li>  
            <% if(active_menu != null) { %>
            	<li <% if(active_menu.equalsIgnoreCase("listbook")) { %> class="active" <%}%>  >
              <a href="adminBook?typepage=listbook"><i class="ion ion-speedometer"></i><span>Danh Sách Bài Viết</span></a>
            </li>
			<li  <% if(active_menu.equalsIgnoreCase("addbook")) { %> class="active" <%}%>  >
              <a href="adminBook?typepage=addbook"><i class="ion ion-speedometer"></i><span>Sách Mới</span></a>
            </li>
            <li  <% if(active_menu.equalsIgnoreCase("categorybook")) { %> class="active" <%}%> >
              <a href="adminBook?typepage=categorybook"><i class="ion ion-speedometer"></i><span>Quản Lý Thể Loại</span></a>
            </li>
            <%} %>
           </ul>
        </aside>
      </div>