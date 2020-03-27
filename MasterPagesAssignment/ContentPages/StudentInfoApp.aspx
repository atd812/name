<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MyMasterPage.Master" AutoEventWireup="true" CodeBehind="StudentInfoApp.aspx.cs" Inherits="MasterPagesAssignment.ContentPages.StudentInfoApp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Articles" runat="server">
	<table style="margin-right: auto; margin-left: auto;" class="auto-style6">
		<tr>
			<td class="auto-style1" style="font-size: large;" text-align: right;">Major:</td>
		<td class="auto-atyle2">
			<asp:RadioButtonList ID="Major" runat="server">
				<asp:ListItem>Finance</asp:ListItem>
				<asp:ListItem>Marketing</asp:ListItem>
				<asp:ListItem>Management</asp:ListItem>
				<asp:ListItem>Accounting</asp:ListItem>
				<asp:ListItem>Info Sys Management</asp:ListItem>
			</asp:RadioButtonList>
		</td>
			<td>
				<asp:RequiredFieldValidator ID ="RequiredFieldValidator4" runat="server
				ControlToValidate="Major" EnableClientScript="False" ErrorMessage="You Must Select a
					Major!" Text="*"ForeColor="Red"></asp:RequiredFieldValidator>
			</td>
		</tr>
		<tr>
			<td class="auto-style1" style="font-size: large; text align: right;">First Name</td>
			<td class="auto-style2">
				<asp:TextBox ID="firstName" runat="server" Width="216px"></asp:TextBox>
			</td>
			<td>
				<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
					ControlToValidate="firstName" ErrorMessage="First Name is Required!" ForeColor="Red"
					EnableClientScript="False"></asp:RequiredFieldValidator>
			</td>
		</tr>
		<tr>
		<td class="auto-stle1" style="font-size: large; text-align: right;">Last Name</td>
		<td class="auto-style2">
			<asp:TextBox ID="TextBox1" runat="server" Width="216px"></asp:TextBox>
			</td>
		<td>
			<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
					ControlToValidate="lastName" ErrorMessage="Last Name is Required!" ForeColor="Red"
					EnableClientScript="False"></asp:RequiredFieldValidator>
		</td>
		</tr>
		<tr>
			<td class="auto-stle3" style="font-size: large; text-align: right;">Email</td>
		<td class="auto-style4">
			<asp:TextBox ID="email" runat="server" Width="216px"></asp:TextBox>
			</td>
			<td class="auto-style5">
				<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
					ControlToValidate="email" ErrorMessage="Email Address Required!" ForeColor="Red"
			EnableClientScript="False"></asp:RequiredFieldValidator>
				<br />
				<asp:RequiredFieldValidator ID="RegularExpressionValidator1" runat="server"
				ControlToValidate="email" ErrorMessage="Must Enter a Valid Email Address!"
					ForeColor="Red" ValidateionExpression="\w+([-+.']\w+)*@\w+([-.])\w+)*\.\w+([-.]\w+)*"
					EnableClientScript="false"></asp:RequiredFieldValidator>
					</td>
		</tr>
		<tr>
			<td style="font-size: large; text-align: center;" colspan="3">
				<asp:Button ID="Button1" runat="server" Font-Size="Medium" Text="Submit"
					OnClick="OutputInfo" />
				<asp:Button ID="Button2" runat="server" Font-Size="Medium" Text="Submit"
					CssClass="button" OnClick="CancelInput" />
			</td>
		</tr>
	</table>
	<asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="ValidationCenter" 
		Font-Size="Large" ForeColor="Red" Width="281px" />
	<asp:Label ID="OutputLabel" runat="server" CssClass="center"></asp:Label>
</asp:Content>
