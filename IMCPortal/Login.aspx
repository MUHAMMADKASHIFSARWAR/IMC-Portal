﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="IMCPortal.Login" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>IMC Portal</title>
  
    <meta charset="utf-8" />
    <meta content="IE=edge" http-equiv="X-UA-Compatible" />
    <meta content="width=device-width, initial-scale=1" name="viewport" />
    

    <!-- Vendor CSS -->
    <link href="vendors/bower_components/animate.css/animate.min.css" rel="stylesheet" />
    <link href="vendors/bower_components/material-design-iconic-font/dist/css/material-design-iconic-font.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="bootstrap/css/app.min.1.css" rel="stylesheet" />
    <link href="bootstrap/css/app.min.2.css" rel="stylesheet" />
    <link href="fontawesome-free-5.8.1-web/css/all.css" rel="stylesheet" />

    <!-- CSS -->

    <style type="text/css">
        .panel-front { /* Only for this preview */
            margin-bottom: 20px;
            margin-top: 20px;
        }

            .panel-front .panel-heading .panel-title img {
                border-radius: 3px 3px 0px 0px;
                width: 100%;
                vertical-align: middle;
            }

            .panel-front .panel-heading {
                padding: 0px;
            }

                .panel-front .panel-heading h4 {
                    line-height: 0;
                }

            .panel-front .panel-body h4 {
                font-weight: bold;
                margin-top: 5px;
                margin-bottom: 15px;
            }

        .text-right {
            margin-top: 10px;
        }

        .modal {
            text-align: center;
        }

        @media screen and (min-width: 768px) {
            .modal:before {
                display: inline-block;
                vertical-align: middle;
                content: " ";
                height: 100%;
            }
        }

        .modal-dialog {
            display: inline-block;
            text-align: left;
            vertical-align: middle;
        }
    </style>


</head>
<body>
    <div class="modal fade" id="resetModal" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header" style="background-color: green">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Password Reset</h4>
                </div>
                <div class="modal-body">
                    <div class="col-md-12">
                        <div class="panel panel-default">
                            <div class="panel-body">
                                <div class="text-center">

                                    <p>If you have forgotten your password you can reset it here.</p>
                                    <div class="panel-body">
                                        <fieldset>
                                            <div class="form-group">
                                                <input class="form-control input-lg" placeholder="E-mail Address" name="email" type="email">
                                            </div>
                                            <input class="btn btn-lg btn-success btn-block" value="Send My Password" type="submit">
                                        </fieldset>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>

        </div>
    </div>


    <div class="container">

        <div id="loginbox" style="margin-top: 0px;" class="mainbox col-md-4 col-md-offset-4 col-sm-8 col-sm-offset-2">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h4 class="panel-title"><a href="#">
                        <img src="images/HI_Green.png" style="margin-top: 35px;" class="img-responsive center-block"></a></h4>
                </div>

                <div style="padding-top: 30px" class="panel-body">

                    <div style="display: none" id="login-alert" class="alert alert-danger col-sm-12"></div>

                    <form id="loginform" runat="server" class="form-horizontal" role="form">
                        <asp:HiddenField ID="userip" runat="server"></asp:HiddenField>




                        <div style="margin-bottom: 25px" class="input-group">
                            <span class="input-group-addon"><i class="fa fa-user"></i></span>
                              <input class="form-control" type="text" id="login_username" name="username" placeholder="username or email">
                         
                        </div>

                        <div style="margin-bottom: 25px" class="input-group">
                            <span class="input-group-addon"><i class="fa fa-lock" aria-hidden="true"></i></span>
                              <input class="form-control" type="password" id="login_password" name="pass" placeholder="password">
                         
                        </div>
                   
                        <div class="input-group">
                            <asp:Label ID="lblInavlid" runat="server" Style="font: bold; color: red;" Text="">
                                            
                            </asp:Label>


                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </div>

                        <div style="float: right; font-size: 80%; position: relative; top: -10px"><a href="#" id="lnkforgetpassword">Forgot password?</a></div>
                        <div style="margin-top: 10px" class="form-group">
                            <!-- Button -->

                            <div class="col-sm-12 col-sm-offset-4 controls ">
                            
                                  <input type="button" class="btn btn-success" id="btnLogin" value="Sign In" onclick="javascript:return false;" />
                            </div>
                        </div>


                    </form>


                </div>
            </div>
        </div>

    </div>
</body>
</html>




