<%@ Page Language="C#" AutoEventWireup="true" CodeFile="report.aspx.cs" Inherits="report" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge;chrome=1" />
    <title>Avaya Report</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="developer" content="William Ballesteros Blanco (wballesteros@avaya.com) - Avaya Inc. 2014">

    <!-- Le styles -->
    <link href="Content/bootstrap2.css" rel="stylesheet">
    
    <link href="Content/bootstrap-responsive.css" rel="stylesheet">
    <link href="Content/bootstrap-datetimepicker.css" rel="stylesheet">
    <link href="Content/docs.css" rel="stylesheet">
    <link href="Content/style.css" rel="stylesheet">
    <link href="Content/prettyLoader.css" rel="stylesheet">
    <link href="Content/DT_bootstrap.css" rel="stylesheet" type="text/css"/>
    <link href="Content/bootstrap-dialog.css" rel="stylesheet" type="text/css" />
    

    

    <style>
          .btn-file {
            position: relative;
            overflow: hidden;
        }

        .btn-file input[type=file] {
            position: absolute;
            top: 0;
            right: 0;
            min-width: 150%;
            min-height: 100%;
            font-size: 999px;
            text-align: right;
            filter: alpha(opacity=0);
            opacity: 0;
            background: red;
            cursor: inherit;
            display: block;
        }

    </style>

    <script type="text/javascript" src="Scripts/jquery.js"></script>
    <script type="text/javascript" src="Scripts/bootstrap.min.js"></script>
    <script type="text/javascript" src="Scripts/bootstrap-datetimepicker.js"></script>
    <script type="text/javascript" src="Scripts/bootstrap-dialog.js"></script>
    <script type="text/javascript" src="Scripts/mystyle.js"></script>
    <script type="text/javascript" src="Scripts/respond.src.js"></script>
    <script type="text/javascript" src="Scripts/prettyLoader.js"></script>
    <script type="text/javascript" src="Scripts/jquery.dataTables.js"></script>
    <script type="text/javascript" src="Scripts/DT_bootstrap.js"></script>
    
    <script type="text/javascript" src="Scripts/report-page.js"></script>

    <!-- Fav and touch icons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">
    <link rel="shortcut icon" href="assets/ico/favicon.png">
</head>

<body>



    <!-- NAVBAR
    ================================================== -->
    <div class="navbar navbar-inverse navbar-fixed-top">
        <div class="navbar-inner">
            <div class="container">


                <a class="brand" href="http://avaya.com">
                    <img class="desktop" src="images/avaya-logo.jpg" alt="Avaya" /><img class="mobile" src="images/avaya-logo-mobile.jpg" alt="Avaya" /></a>

                <button type="button" class="btn btn-navbar visible-phone" data-toggle="collapse" data-target=".nav-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>

                <div class="nav-collapse collapse">
                   
                </div>

               
                
                <!--/.nav-collapse -->

            </div>
        </div>
    </div>


    <!-- Marketing messaging and featurettes
    ================================================== -->
    <!-- Wrap the rest of the page in another container to center all the content. -->

    

    <div class="container" id="dt_my_solicits" style="position:relative;top:100px;">
        <div class="row-fluid">


            <div class="span9">

                <hr style="margin-top: 0;">

                <div class="row-fluid">
                    <div class="span12">
                        <h2>Register</h2>
        

        <table id="datatables" cellpadding="0" cellspacing="0" border="0" style="width: 115%; text-align: center; visibility: hidden" class="table table-striped table-bordered">
            <thead id="thead">
                <tr>
                    
                    
                    <th class="sorting" width="15%">Translation Name</th>
                    <th class="sorting" width="10%">State</th>
                    <th class="sorting" width="12%">Original Lang</th>
                    <th class="sorting" width="12%">Translate Lang</th>
                    <th class="sorting" width="14%">Register Date</th>
                    <th class="sorting" width="14%">Desired Date</th>
                    <th class="sorting" width="14%">Estimated Date</th>
                    <th class="sorting" width="8%">Priority</th>
                    <th class="sorting" width="7%">Details</th>

                    
                </tr>
            </thead>
            <tbody id="tbody">
            </tbody>
            <tfoot>
                <tr>
                    <td>
                        <%--<table style="width:24px">
                            <tr>
                                <td>--%>
                                    <div id="toExcel"><a href="#" id="btnDescargaExcel">
                                        <img src="images/xls.png" alt="to Excel" /></a></div>
                                <%--</td>
                            </tr>
                        </table>--%>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    
                    
                </tr>
            </tfoot>
        </table>
                         </div></div></div></div>
    </div>
    <!-- /.container -->

    <!-- Progress bar -->
    <div class="modal hide" id="pleaseWaitDialog" data-backdrop="static" data-keyboard="false">
            <div class="modal-header">
                <h1>Processing...</h1>
            </div>
            <div class="modal-body">
                <div class="progress progress-striped active">
                    <div class="bar progress-bar-danger" style="width: 100%;"></div>
                </div>
            </div>
    </div>

    <!-- Footer
    ================================================== -->
   




    
    
    <!--[if lte IE 7]><script src="assets/js/lte-ie7.js"></script><![endif]-->
</body>
</html>
