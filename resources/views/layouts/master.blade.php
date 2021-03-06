<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="en">
<head>
    @include('layouts.partials._head')
    @include('layouts.partials._customCssStyle')

 </head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">
    @include('layouts.partials._navbar')
  <!-- Navbar -->
 
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
 @include('layouts.partials._sidebar')
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper" id="app">
    @include('flash::message')
     @yield('content')
    
  </div>
  <!-- /.content-wrapper -->
  <!-- Main Footer -->
  @include('layouts.partials._footer')
</div>
<!-- ./wrapper -->

<!-- REQUIRED SCRIPTS -->

<!-- jQuery -->

    @include('layouts.partials._footer-script')
    @include('layouts.partials._DynamicUserSelectOptions')
    @include('layouts.jquery.productsInformationList')
    @include('layouts.jquery.demandInformation')
    
    
</body>
</html>
