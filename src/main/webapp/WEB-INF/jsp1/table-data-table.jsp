<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="description"
          content="Vali is a responsive and free admin theme built with Bootstrap 4, SASS and PUG.js. It's fully customizable and modular.">
    <!-- Twitter meta-->
    <meta property="twitter:card" content="summary_large_image">
    <meta property="twitter:site" content="@pratikborsadiya">
    <meta property="twitter:creator" content="@pratikborsadiya">
    <!-- Open Graph Meta-->
    <meta property="og:type" content="website">
    <meta property="og:site_name" content="Vali Admin">
    <meta property="og:title" content="Vali - Free Bootstrap 4 admin theme">
    <meta property="og:url" content="http://pratikborsadiya.in/blog/vali-admin">
    <meta property="og:image" content="http://pratikborsadiya.in/blog/vali-admin/hero-social.png">
    <meta property="og:description"
          content="Vali is a responsive and free admin theme built with Bootstrap 4, SASS and PUG.js. It's fully customizable and modular.">
    <title>Data Table - Vali Admin</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Main CSS-->
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <link rel="stylesheet" type="text/css"
          href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.12.1/bootstrap-table.min.css">

    <!-- Font-icon css-->
    <link rel="stylesheet" type="text/css"
          href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body class="app sidebar-mini rtl">


<main class="app-content">
    <div class="app-title">
        <div>
            <h1><i class="fa fa-th-list"></i> Data Table</h1>
            <p>Table to display analytical data effectively</p>
        </div>
        <ul class="app-breadcrumb breadcrumb side">
            <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
            <li class="breadcrumb-item">Tables</li>
            <li class="breadcrumb-item active"><a href="#">Data Table</a></li>
        </ul>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="tile">
                <div class="tile-body">
                    <div id="toolbar" class="btn-group">
                        <button id="btn_add" type="button" class="btn btn-primary">新增</button>
                    </div>
                    <table id="mytable"></table>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <form action="saveUser" method="post">
                    <div class="btn-lg modal-header">
                        <h4>新增</h4>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <label for="auname" class="col-sm-4 control-label">用户名</label>
                            <div class="col-sm-12">
                                <input type="text" id="auname" name="uname" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="asex" class="col-sm-4 control-label">性别</label>
                            <div class="col-sm-12">
                                <input type="text" id="asex" name="sex" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="aage" class="col-sm-4 control-label">年龄</label>
                            <div class="col-sm-12">
                                <input type="text" id="aage" name="age" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="atellphone" class="col-sm-4 control-label">手机号</label>

                            <div class = "col-sm-12">
                                <input type = "text" id="atellphone" name="tellphone" class = "form-control"/>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-info">新增</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <%-- <!-- 按钮触发模态框 -->
     <button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">开始演示模态框</button>--%>
    <!-- 模态框（Modal） -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <form action="updateUser" method="post" class="modal-form" id="modal-form">
                    <div class="modal-header">
                        <h4 class="modal-title" id="myModalLabel">修改</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <label for="auname" class="col-sm-4 control-label">用户名</label>
                            <div class="col-sm-12">
                                <input type="text" id="muname" name="uname" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="asex" class="col-sm-4 control-label">性别</label>
                            <div class="col-sm-12">
                                <input type="text" id="msex" name="sex" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="aage" class="col-sm-4 control-label">年龄</label>
                            <div class="col-sm-12">
                                <input type="text" id="mage" name="age" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="atellphone" class="col-sm-4 control-label">手机号</label>

                            <div class = "col-sm-12">
                                <input type = "text" id="mtellphone" name="tellphone" class = "form-control"/>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <input type="hidden" name="id" id="mid">
                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                        <button type="submit" class="btn btn-info">提交更改</button>
                    </div>
                </form>
            </div><!-- /.modal-content -->
        </div><!-- /.modal -->
    </div>
</main>
<!-- Navbar-->
<header class="app-header"><a class="app-header__logo" href="index.html">Vali</a>
    <!-- Sidebar toggle button--><a class="app-sidebar__toggle" href="#" data-toggle="sidebar"
                                    aria-label="Hide Sidebar"></a>
    <!-- Navbar Right Menu-->
    <ul class="app-nav">
        <li class="app-search">
            <input class="app-search__input" type="search" placeholder="Search">
            <button class="app-search__button"><i class="fa fa-search"></i></button>
        </li>
        <!--Notification Menu-->
        <li class="dropdown"><a class="app-nav__item" href="#" data-toggle="dropdown" aria-label="Show notifications"><i
                class="fa fa-bell-o fa-lg"></i></a>
            <ul class="app-notification dropdown-menu dropdown-menu-right">
                <li class="app-notification__title">You have 4 new notifications.</li>
                <div class="app-notification__content">
                    <li><a class="app-notification__item" href="javascript:;"><span class="app-notification__icon"><span
                            class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x text-primary"></i><i
                            class="fa fa-envelope fa-stack-1x fa-inverse"></i></span></span>
                        <div>
                            <p class="app-notification__message">Lisa sent you a mail</p>
                            <p class="app-notification__meta">2 min ago</p>
                        </div>
                    </a></li>
                    <li><a class="app-notification__item" href="javascript:;"><span class="app-notification__icon"><span
                            class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x text-danger"></i><i
                            class="fa fa-hdd-o fa-stack-1x fa-inverse"></i></span></span>
                        <div>
                            <p class="app-notification__message">Mail server not working</p>
                            <p class="app-notification__meta">5 min ago</p>
                        </div>
                    </a></li>
                    <li><a class="app-notification__item" href="javascript:;"><span class="app-notification__icon"><span
                            class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x text-success"></i><i
                            class="fa fa-money fa-stack-1x fa-inverse"></i></span></span>
                        <div>
                            <p class="app-notification__message">Transaction complete</p>
                            <p class="app-notification__meta">2 days ago</p>
                        </div>
                    </a></li>
                    <div class="app-notification__content">
                        <li><a class="app-notification__item" href="javascript:;"><span
                                class="app-notification__icon"><span class="fa-stack fa-lg"><i
                                class="fa fa-circle fa-stack-2x text-primary"></i><i
                                class="fa fa-envelope fa-stack-1x fa-inverse"></i></span></span>
                            <div>
                                <p class="app-notification__message">Lisa sent you a mail</p>
                                <p class="app-notification__meta">2 min ago</p>
                            </div>
                        </a></li>
                        <li><a class="app-notification__item" href="javascript:;"><span
                                class="app-notification__icon"><span class="fa-stack fa-lg"><i
                                class="fa fa-circle fa-stack-2x text-danger"></i><i
                                class="fa fa-hdd-o fa-stack-1x fa-inverse"></i></span></span>
                            <div>
                                <p class="app-notification__message">Mail server not working</p>
                                <p class="app-notification__meta">5 min ago</p>
                            </div>
                        </a></li>
                        <li><a class="app-notification__item" href="javascript:;"><span
                                class="app-notification__icon"><span class="fa-stack fa-lg"><i
                                class="fa fa-circle fa-stack-2x text-success"></i><i
                                class="fa fa-money fa-stack-1x fa-inverse"></i></span></span>
                            <div>
                                <p class="app-notification__message">Transaction complete</p>
                                <p class="app-notification__meta">2 days ago</p>
                            </div>
                        </a></li>
                    </div>
                </div>
                <li class="app-notification__footer"><a href="#">See all notifications.</a></li>
            </ul>
        </li>
        <!-- User Menu-->
        <li class="dropdown"><a class="app-nav__item" href="#" data-toggle="dropdown" aria-label="Open Profile Menu"><i
                class="fa fa-user fa-lg"></i></a>
            <ul class="dropdown-menu settings-menu dropdown-menu-right">
                <li><a class="dropdown-item" href="page-user"><i class="fa fa-cog fa-lg"></i> Settings</a></li>
                <li><a class="dropdown-item" href="page-user"><i class="fa fa-user fa-lg"></i> Profile</a></li>
                <li><a class="dropdown-item" href="page-login"><i class="fa fa-sign-out fa-lg"></i> Logout</a></li>
            </ul>
        </li>
    </ul>
</header>
<!-- Sidebar menu-->
<div class="app-sidebar__overlay" data-toggle="sidebar"></div>
<aside class="app-sidebar">
    <div class="app-sidebar__user"><img class="app-sidebar__user-avatar"
                                        src="https://s3.amazonaws.com/uifaces/faces/twitter/jsa/48.jpg"
                                        alt="User Image">
        <div>
            <p class="app-sidebar__user-name">John Doe</p>
            <p class="app-sidebar__user-designation">Frontend Developer</p>
        </div>
    </div>
    <ul class="app-menu">
        <li><a class="app-menu__item" href="index.html"><i class="app-menu__icon fa fa-dashboard"></i><span
                class="app-menu__label">Dashboard</span></a></li>
        <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i
                class="app-menu__icon fa fa-laptop"></i><span class="app-menu__label">UI Elements</span><i
                class="treeview-indicator fa fa-angle-right"></i></a>
            <ul class="treeview-menu">
                <li><a class="treeview-item" href="bootstrap-components"><i class="icon fa fa-circle-o"></i> Bootstrap
                    Elements</a></li>
                <li><a class="treeview-item" href="https://fontawesome.com/v4.7.0/icons/" target="_blank"
                       rel="noopener"><i class="icon fa fa-circle-o"></i> Font Icons</a></li>
                <li><a class="treeview-item" href="ui-cards"><i class="icon fa fa-circle-o"></i> Cards</a></li>
                <li><a class="treeview-item" href="widgets"><i class="icon fa fa-circle-o"></i> Widgets</a></li>
            </ul>
        </li>
        <li><a class="app-menu__item" href="charts"><i class="app-menu__icon fa fa-pie-chart"></i><span
                class="app-menu__label">Charts</span></a></li>
        <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i
                class="app-menu__icon fa fa-edit"></i><span class="app-menu__label">Forms</span><i
                class="treeview-indicator fa fa-angle-right"></i></a>
            <ul class="treeview-menu">
                <li><a class="treeview-item" href="form-components"><i class="icon fa fa-circle-o"></i> Form Components</a>
                </li>
                <li><a class="treeview-item" href="form-custom"><i class="icon fa fa-circle-o"></i> Custom
                    Components</a></li>
                <li><a class="treeview-item" href="form-samples"><i class="icon fa fa-circle-o"></i> Form Samples</a>
                </li>
                <li><a class="treeview-item" href="form-notifications"><i class="icon fa fa-circle-o"></i> Form
                    Notifications</a></li>
            </ul>
        </li>
        <li class="treeview is-expanded"><a class="app-menu__item" href="#" data-toggle="treeview"><i
                class="app-menu__icon fa fa-th-list"></i><span class="app-menu__label">Tables</span><i
                class="treeview-indicator fa fa-angle-right"></i></a>
            <ul class="treeview-menu">
                <li><a class="treeview-item" href="table-basic"><i class="icon fa fa-circle-o"></i> Basic Tables</a>
                </li>
                <li><a class="treeview-item active" href="table-data-table"><i class="icon fa fa-circle-o"></i> Data
                    Tables</a></li>
            </ul>
        </li>
        <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i
                class="app-menu__icon fa fa-file-text"></i><span class="app-menu__label">Pages</span><i
                class="treeview-indicator fa fa-angle-right"></i></a>
            <ul class="treeview-menu">
                <li><a class="treeview-item" href="blank-page"><i class="icon fa fa-circle-o"></i> Blank Page</a></li>
                <li><a class="treeview-item" href="page-login"><i class="icon fa fa-circle-o"></i> Login Page</a></li>
                <li><a class="treeview-item" hr ef="page-lockscreen"><i class="icon fa fa-circle-o"></i> Lockscreen Page</a>
                </li>
                <li><a class="treeview-item" href="page-user"><i class="icon fa fa-circle-o"></i> User Page</a></li>
                <li><a class="treeview-item" href="page-invoice"><i class="icon fa fa-circle-o"></i> Invoice Page</a>
                </li>
                <li><a class="treeview-item" href="page-calendar"><i class="icon fa fa-circle-o"></i> Calendar Page</a>
                </li>
                <li><a class="treeview-item" href="page-mailbox"><i class="icon fa fa-circle-o"></i> Mailbox</a></li>
                <li><a class="treeview-item" href="page-error"><i class="icon fa fa-circle-o"></i> Error Page</a></li>
            </ul>
        </li>
    </ul>
</aside>
<!-- Essential javascripts for application to work-->
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/main.js"></script>
<!-- The javascript plugin to display page loading on top-->
<script src="js/plugins/pace.min.js"></script>
<!-- Page specific javascripts-->
<!-- Data table plugin-->
<%--<script type="text/javascript" src="js/plugins/jquery.dataTables.min.js"></script>--%>
<%--<script type="text/javascript" src="js/plugins/dataTables.bootstrap.min.js"></script>--%>
<%--<script type="text/javascript">$('#sampleTable').DataTable();</script>--%>
<script type="text/javascript"
        src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.12.1/bootstrap-table.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.12.0/locale/bootstrap-table-zh-CN.min.js"></script>
<script type="text/javascript">
    $("#mytable").bootstrapTable({ // 对应table标签的id
        url: "allUser", // 获取表格数据的url
        method: 'post',
        cache: false, // 设置为 false 禁用 AJAX 数据缓存， 默认为true
        striped: true,  //表格显示条纹，默认为false
        pagination: true, // 在表格底部显示分页组件，默认false
        pageList: [4,5,10], // 设置页面可以显示的数据条数
        pageSize: 5, // 页面数据条数
        pageNumber: 1, // 首页页码
        sidePagination: 'server', // 设置为服务器端分页
        sortName: 'id', // 要排序的字段
        sortOrder: 'asc', // 排序规则
        search: true,
        searchOnEnterKey: true,
        minimumCountColumns: 2,             //最少允许的列数
        clickToSelect: true,                //是否启用点击选中行
        uniqueId: "ID",                     //每一行的唯一标识，一般为主键列
        detailView: false,                  //是否显示父子表
        columns: [
            {
                checkbox: true, // 显示一个勾选框
                align: 'center' // 居中显示
            }, {
                field: 'id', // 返回json数据中的uname
                title: '用户编号', // 表格表头显示文字
                align: 'center', // 左右居中
                valign: 'middle' // 上下居中
            }, {
                field: 'uname',
                title: '用户昵称',
                align: 'center',
                valign: 'middle'
            }, {
                field: 'sex',
                title: '性别',
                align: 'center',
                valign: 'middle'
            }, {
                field: 'age',
                title: '年龄',
                align: 'center',
                valign: 'middle',
            }, {
                title: '操作',
                align: 'center',
                valign: 'middle',
                events: window.operateEvents = {
                    'click #btn_modify': function (e, value, row, index) {
                        $("#myModal").modal('show');
                        $("#mid").val(row.id);
                        $("#muname").val(row.uname);
                        $("#msex").val(row.sex);
                        $("#mage").val(row.age);
                        $("#mtellphone").val(row.tellphone);
                    },
                    'click #btn_delete': function (e, value, row, index) {
                        if (confirm("确定删除吗")) {


                            location.href = "deleteUser?id="+row.id;
                        }
                    }
                },


                formatter: function (value, row, index) {
                    return ['<div class="btn-group btn-group-sm" role="group">\n',
                        '<button id="btn_modify" type="button" class="btn btn-default">修改</button>\n',
                        '<button id="btn_delete" type="button" class="btn btn-warning">删除</button>\n',
                        '</div>'].join('');
                }

            }]

    });
    $("#btn_add").click(function () {
        $("#addModal").modal('show');
    });
</script>
<!-- Google analytics script-->
<script type="text/javascript">
    if (document.location.hostname == 'pratikborsadiya.in') {
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r;
            i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date();
            a = s.createElement(o),
                m = s.getElementsByTagName(o)[0];
            a.async = 1;
            a.src = g;
            m.parentNode.insertBefore(a, m)
        })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');
        ga('create', 'UA-72504830-1', 'auto');
        ga('send', 'pageview');
    }
</script>
</body>
</html>