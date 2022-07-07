<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Mesajlar.aspx.cs" Inherits="WebApplication2.Mesajlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">


        .auto-style10 {
            width: 41px;
        }
        .auto-style8 {
            font-weight: bold;
        }
        .auto-style9 {
            width: 40px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Panel ID="Panel1" runat="server" style="background-color: #CCCCCC">
        <table class="auto-style4">
            <tr>
                <td class="auto-style10">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style8" Height="30px" Text="+" Width="30px"/>
                </td>
                <td class="auto-style9">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style8" Height="30px" Text="-" Width="30px"/>
                </td>
                <td>MESAJ LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
     <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="447px">
            <ItemTemplate>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style5">
                            <asp:Label ID="Label1" runat="server" style="font-size: x-large" Text='<%# Eval("MesajGonderen") %>'></asp:Label>
                        </td>
                        <td class="auto-style7">
                           <a href="MesajDetay.aspx?Mesajid=<%# Eval ("Mesajid") %>"><asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/ikonlar/png-transparent-green-check-illustration-check-mark-checkbox-yes-miscellaneous-angle-hand-thumbnail.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
</asp:Content>
