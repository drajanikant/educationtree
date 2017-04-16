﻿<%@ Page Title="Profile Address" Language="C#" MasterPageFile="~/member/member.Master" AutoEventWireup="true" CodeBehind="edit-profile-address.aspx.cs" Inherits="webEducationTree.member.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="contentNavbar" runat="server">
    <li class=""><a href="member-home.aspx"><span class="glyphicon glyphicon-home"></span>Home</a></li>
    <li class="dropdown active"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
        aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-cog"></span>Hi!!
        <label id="member_name" runat="server">Admin</label>
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
            <li><a href="member-profile.aspx"><span class="glyphicon glyphicon-user"></span>Profile</a></li>
            <li><a href="../logout.aspx"><span class="glyphicon glyphicon-off"></span>Sign out</a></li>
        </ul>
    </li>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentMain" runat="server">
    <div style="padding: 10px;"></div>
    <div id="error" runat="server" class="alert alert-danger alert-dismissable">
        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
        <strong>Error!</strong> Error while deleting college.
    </div>
    <div id="success" runat="server" class="alert alert-success alert-dismissable">
        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
        <strong>Success</strong><p id="error_message" runat="server">College name deleted successfully.</p>
    </div>
    <div class="btn-group btn-group-lg btn-group-justified" role="group" style="margin-top: 20px;">
        <div class="btn-group" role="group">
            <a class="btn btn-info" href="edit-progfile-general.aspx" style="font-size: 20px">General Information</a>
        </div>
        <div class="btn-group" role="group">
            <a class="btn btn-primary" href="edit-profile-address.aspx" style="font-size: 20px">Member Address</a>
        </div>
        <div class="btn-group" role="group">
            <a class="btn btn-info" href="edit-profile-school.aspx" style="font-size: 20px">School/College</a>
        </div>
        <div class="btn-group" role="group">
            <a class="btn btn-info" href="edit-profile-social.aspx" style="font-size: 20px">Social Informaiton</a>
        </div>
    </div>
    <form class="form-horizontal" id="form_general_info" runat="server">
        <div class="panel panel-primary col-md-6">
            <div class="panel-body">

                <div class="form-group">
                    <label class="control-label col-sm-2" for="txtAddress1">Address line 1:</label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txtAddress1" runat="server" class="form-control" placeholder="Enter address line 1"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="txtAddress2">Address line 2:</label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txtAddress2" runat="server" class="form-control" placeholder="Enter address line 2"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="drdGender">State:</label>
                    <div class="col-sm-10">
                        <asp:DropDownList ID="drdState" runat="server" class="form-control" placeholder="Enter date of birth" AutoPostBack="True" OnSelectedIndexChanged="drdState_SelectedIndexChanged">
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="drdDist">District:</label>
                    <div class="col-sm-10">
                        <asp:DropDownList ID="drdDist" runat="server" class="form-control" AutoPostBack="True" OnSelectedIndexChanged="drdDist_SelectedIndexChanged">
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="drdTaluka">Taluka:</label>
                    <div class="col-sm-10">
                        <asp:DropDownList ID="drdTaluka" runat="server" class="form-control" AutoPostBack="True" OnSelectedIndexChanged="drdTaluka_SelectedIndexChanged">
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="drdCity">City:</label>
                    <div class="col-sm-10">
                        <asp:DropDownList ID="drdCity" runat="server" class="form-control">
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="txtPinCode">Pin Code:</label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txtPinCode" runat="server" class="form-control" placeholder="Enter pin code">
                            
                        </asp:TextBox>
                    </div>
                </div>


                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">

                        <asp:Button ID="btnSave" runat="server" Text="Save" class="btn btn-primary" OnClick="btnSave_Click" />
                        <asp:Button ID="btnDone" runat="server" Text="Done" class="btn btn-warning" />
                    </div>
                </div>

            </div>
        </div>
        <div class="panel panel-primary col-md-6">
            <div class="panel-body">
                <asp:DataList ID="dataAddress" runat="server">
                    <ItemTemplate>


                    </ItemTemplate>

                </asp:DataList>
                
            </div>
        </div>
    </form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentScripts" runat="server">
</asp:Content>
