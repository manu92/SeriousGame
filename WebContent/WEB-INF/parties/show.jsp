<%@page import="Modeles.Produit"%>
<%@page import="Modeles.Utilisateur"%>
<%@page import="Modeles.Entreprise"%>
<%@ page import="Modeles.Partie"%>

<%@ page import="java.util.List"%>

<!-- Insertion Header -->
<%@ include file="../header.jsp"  %>

	<%
		Partie partie = (Partie) request.getAttribute("partie");
		Utilisateur user = (Utilisateur) session.getAttribute("user");
		Entreprise entreprise = user.getEntreprise();
	%>
	<div class="row">
		<h2 class="col-xs-12">Partie <%= partie.getNom_partie() %></h2>
	</div>
	
	<div class="row">
		<h2 class="col-xs-12">
			<span class="glyphicon glyphicon-pushpin"></span> R�gles de la partie :
		</h2>
		<p class="col-xs-12">
			Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt 
			ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation 
			ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor 
			in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at 
			vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore 
			te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming 
			id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui 
			facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius.
		</p>
	</div>
	
	<div class="row">
		<table class="table table-hover">
			<thead>
				<tr>
					<th>Numero de tour</th>
					<th>Capital Restant</th>
					<th>Bonus</th>
					<th>Malus</th>
				</tr>
			</thead>
			<tbody>
				<tr>
				   <td>1</td>
				   <td>20 000 &euro;</td>
				   <td></td>
				   <td></td>
				</tr>
				<tr class="danger">
				   <td>2</td>
				   <td>18 000 &euro;</td>
				   <td></td>
				   <td></td>
				</tr>
				<tr class="success">
				   <td>3</td>
				   <td>25 000 &euro;</td>
				   <td></td>
				   <td></td>
				</tr>
			</tbody>
		</table>
	</div>
	
	
	<div class="row">
		<%
			List<Produit> produits = entreprise.getProduits();
			for(Produit produit : produits) {
		%>
		<div class="panel-group" id="accordion">
		  <div class="panel panel-default">
		    <div class="panel-heading">
		      <h4 class="panel-title">
		        <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
		         	<%= produit.getNom_produit() %>
		        </a>
		      </h4>
		    </div>
		    <div id="collapseOne" class="panel-collapse collapse in">
		      <div class="panel-body">
		      
		      </div>
		    </div>
		  </div>
	  	</div>
	  	<% } %>
	</div>
	
<!-- Insertion Footer -->
<%@ include file="../footer.jsp"  %>