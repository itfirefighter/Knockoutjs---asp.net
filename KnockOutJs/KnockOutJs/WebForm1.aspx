<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="KnockOutJs.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>Pagina de prueba de KnockOutJS</title>
	<script src="Scripts/knockout-2.1.0.js" type="text/javascript"></script>
	<script src="Scripts/jquery-1.4.1.js" type="text/javascript"></script>
</head>
<body>
	<form id="form1" runat="server">
	<div>
		<asp:TextBox ID="texto" runat="server"></asp:TextBox>
		<table>
			<thead>
				<tr>
					<th>
						First name
					</th>
					<th>
						Last name
					</th>
				</tr>
			</thead>
			<tbody data-bind="foreach: people">
				<tr>
					<td>
						<asp:Label ID="lblA1" runat="server" data-bind="text: firstName"></asp:Label>
					</td>
					<td>
						<asp:TextBox ID="Label1" runat="server" data-bind="value: lastName" />
					</td>
				</tr>
			</tbody>
		</table>
		<asp:DropDownList ID="ddl" runat="server" data-bind="foreach: people">
			<asp:ListItem data-bind="{text: lastName, value: firstName}"></asp:ListItem>
		</asp:DropDownList>
		<asp:GridView ID="grid" runat="server" AutoGenerateColumns="False" 
			BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" 
			CellPadding="3" CellSpacing="1" GridLines="None">
			<Columns>
				<%--	<asp:BoundField DataField="x"  data-bind="text: firstName" />--%>
				<%--	<asp:DynamicField DataField="nombre" />--%>
				<asp:TemplateField HeaderText="Nombre">
					<ItemTemplate>
						<span data-bind="text:firstName"></span>
					</ItemTemplate>
				</asp:TemplateField>
				<asp:TemplateField HeaderText="Apellido">
					<ItemTemplate>
						<span data-bind="text:lastName"></span>
					</ItemTemplate>
				</asp:TemplateField>
			</Columns>
			<FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
			<HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
			<PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
			<RowStyle BackColor="#DEDFDE" ForeColor="Black" />
			<SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
			<SortedAscendingCellStyle BackColor="#F1F1F1" />
			<SortedAscendingHeaderStyle BackColor="#594B9C" />
			<SortedDescendingCellStyle BackColor="#CAC9C9" />
			<SortedDescendingHeaderStyle BackColor="#33276A" />
		</asp:GridView>
		<script type="text/javascript">
			$("#grid>tbody").attr('data-bind', 'foreach: people');
			ko.applyBindings({ people: [{ firstName: 'Bert', lastName: 'Bertington' },
		{ firstName: 'Charles', lastName: 'Charlesforth' },
		{ firstName: 'Denise', lastName: 'Dentiste'}]
			});
			$("#grid th:gt(1):parent").hide();
			
		</script>
	</div>
	</form>
</body>
</html>
