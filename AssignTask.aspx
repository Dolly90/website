<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="AssignTask.aspx.cs" Inherits="Three_Tier_PrjMgnt.AssignTask" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="form1" runat="server">
        <div id="header1">
            <span>Assign Task</span>
        </div>
        <ajaxToolkit:ToolkitScriptManager ID="toolScriptManageer1" runat="server"></ajaxToolkit:ToolkitScriptManager>
        <div class="form-register">
            <div class="form-register-with-email">
                <br />
                <%-- <asp:Panel ID="Panel5" runat="server" BorderStyle="Solid" BorderColor="SkyBlue" Style="width: 153%; height: 3250%; margin-left: -363px;">--%>
                <div class="form-white-background">
                    <div>
                        <div>
                            <asp:Label ID="lblErrorMsg1" runat="server" Text="" ForeColor="DarkGreen" Style="margin-left: 40px; font-size: larger; font-bold: true; margin-top: 20px; margin-bottom: 20px;"></asp:Label>

                        </div>
                        <div class="form-row">
                            <label>
                                <span style="text-align: left;">Select User:</span>

                                <asp:DropDownList ID="ddluser" AppendDataBoundItems="true" Width="200px" runat="server" AutoPostBack="True" Style="margin-left: 12px;"
                                    DataTextField="User_Name" DataValueField="User_Id" OnSelectedIndexChanged="ddluser_click_IndexChanged">
                                    <asp:ListItem Value="0">--Select Type--</asp:ListItem>
                                </asp:DropDownList>
                                <%--  <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator4" ForeColor="Red" ControlToValidate="ddltasktype" ErrorMessage="*"></asp:RequiredFieldValidator>--%>
                            </label>
                        </div>
                        <div class="form-row">
                            <label>
                                <span style="text-align: left;">Select Project:</span>

                                <asp:DropDownList ID="ddlproject" AppendDataBoundItems="true" Width="200px" runat="server" AutoPostBack="false" Style="margin-left: 12px;"
                                    DataTextField="Proj_Name" DataValueField="Proj_Id">
                                    <asp:ListItem Value="0">--Select Type--</asp:ListItem>
                                </asp:DropDownList>
                                <%--  <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator4" ForeColor="Red" ControlToValidate="ddltasktype" ErrorMessage="*"></asp:RequiredFieldValidator>--%>
                            </label>
                        </div>
                        <div class="form-row" style="white-space: nowrap;">
                            <label>
                                <span style="text-align: left;">Assign Task:</span>

                                <asp:TextBox ID="txttaskName" runat="server" CssClass="textStyle" Style="margin-left: 10px;"></asp:TextBox>
                                <%-- <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ForeColor="Red" ControlToValidate="txttaskName" ErrorMessage="*"></asp:RequiredFieldValidator>--%>
                            </label>
                        </div>
                    

                    <div class="form-row">
                        <label>
                            <span style="text-align: left;">Start Date:</span>

                            <asp:TextBox ID="txtstartdate2" runat="server" CssClass="textStyle" Style="margin-left: 10px;"></asp:TextBox>
                            <%--  <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator6" ForeColor="Red" ControlToValidate="txtstartdate2" ErrorMessage="*"></asp:RequiredFieldValidator>--%>

                            <ajaxToolkit:CalendarExtender ID="CalendarExtender3" PopupButtonID="imgPopup" runat="server"
                                TargetControlID="txtstartdate2" Format="dd-MM-yyyy">
                            </ajaxToolkit:CalendarExtender>
                        </label>
                    </div>


                    <div class="form-row" style="white-space: nowrap; float: left;">
                        <label>

                            <span>Task End Date:</span>

                            <asp:TextBox ID="txtenddate1" runat="server" CssClass="textStyle" Style="margin-left: 10px;"></asp:TextBox>
                            <%--   <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator7" ForeColor="Red" ControlToValidate="txtenddate1" ErrorMessage="*"></asp:RequiredFieldValidator>--%>
                            <ajaxToolkit:CalendarExtender ID="CalendarExtender5" PopupButtonID="imgPopup" runat="server"
                                TargetControlID="txtenddate1" Format="dd-MM-yyyy">
                            </ajaxToolkit:CalendarExtender>

                        </label>
                    </div>
                    <div class="form-row" style="white-space: nowrap;">
                        <label>
                            <span style="text-align: left;">Send To Email:</span>

                            <asp:TextBox ID="txtemail" runat="server" CssClass="textStyle" Style="margin-left: 10px;"></asp:TextBox>
                            <%-- <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ForeColor="Red" ControlToValidate="txttaskName" ErrorMessage="*"></asp:RequiredFieldValidator>--%>
                        </label>
                    </div>
                    <div class="form-row">

                        <asp:Button ID="btnsubmit" runat="server" Text="ADD" OnClick="btnsubmit_Click" CssClass="buttonStyle" Style="margin-top: -22px; margin-left: 137px;" />


                    </div>
                    <%-- <div>
                            <asp:Button ID="btn_View_Sub_task" runat="server" Text="View Sub Task" CssClass="buttonStyle" OnClick="btn_View_sub_task_Click" Style="margin-top: -68px; margin-left: 266px;" />
                        </div>--%>
                </div>
                <br />
            </div>

            <br />



        </div>
        </div>
    </form>
</asp:Content>
