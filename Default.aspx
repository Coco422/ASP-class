<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="C002._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="LoginContent" runat="server">
    <form runat="server" style="width: 300px; margin-left: auto; margin-right: auto; text-align: center; margin-top: 100px;">
                    <h4>登录查看更多信息</h4>
                    <div class="form-group">
                        <label for="txtUserName">账号：</label>
                        <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                        <br />
                        <label for="txtPwd">密码：</label>
                        <asp:TextBox ID="txtPwd" runat="server" TextMode="Password"></asp:TextBox>

                        <div class="form-group form-check">
                            <input type="checkbox" class="form-check-input" id="exampleCheck1">
                            <label class="form-check-label" for="exampleCheck1">记住老子</label>
                        </div>
                        <asp:Button ID="btnLogin" runat="server" OnClick="Button1_Click" Text="登录" class="btn btn-primary" />
                        <asp:Button ID="btnSignup" runat="server" OnClick="ButtonSignup_Click" Text="注册" class="btn btn-light" />
                    </div>
                </form>
</asp:Content>
