<!DOCTYPE html>
<html lang="es" ng-app="mesasTematicas">
<head>
	<meta charset="utf-8">
	<title>Mesas Tematicas</title>
	<link rel="stylesheet" type="text/css" href="static/css/bootstrap.css">
	<style type="text/css">
		#mesas{
			height: 720px;
			border: 1px;
			overflow: scroll;
		}

		#info{
			height: 720px;
			
			overflow: scroll;
		}
	</style>
</head>

<body ng-controller="temasMesas">
<div class="container row">

	<div  class="mesas col-md-4 scrollable" id="mesas">
		<div class="panel panel-default" ng-repeat="mesa in mesas">
			<div class="panel-heading">
				{{mesa.nombreMesa}}
			</div>
		  	<div class="panel-body">
		   		{{mesa.descripcion}}<br>
		   		Fecha inicio: {{mesa.fechaAlta}}
		   		Fecha fin: {{mesa.fechaFin}}
		   		Estatus: {{mesa.status}}
		   		<button id="leerMas" ng-click="mostrar(mesa.id)">Leer más</button>
		   	</div>
		</div>
	</div>


	<div id="info" class="col-lg-5 col-offset-md-1">
		<h3>¿Que hace esta mesa de trabajo?</h3>
		<div id="nombre">
			{{mes[0].nombreMesa}}
		</div>
		<div id="descripcion">
			{{mes[0].descripcion}}
		</div>
		<button id="verIntegrantes" class='btn btn-large btn-default' ng-click='integrantes(mes[0].id)'>Constituyentes integrantes</button>

		<br>
		<button id = "btnInforme" class="btn btn-large btn-primary">Informe comisión</button>
		<div id="informe" style="display: none">{{mes[0].informeComision}}</div>
	</div>








	<div id="personas" class="col-lg-4 col-offset-md-1" style="display: none;">
	<button id="regresar">Ocultar</button>
	<table class="table">

		<thead>
			<td>Foto</td>
			<td>Nombre</td>
			<td>Cargo</td>
			<td>Equipo</td>
			<td></td>
		</thead>
		<tr ng-repeat="persona in personas">
			<td><img src="{{persona.fotoPersona}}">FotoEquipo</td>
			<td >
				{{persona.nombre + " " + persona.apellidoPaterno + " " + persona.apellidoMaterno}}
			</td>
			<td >
				{{persona.cargoConstituyente}}
			</td>

			<td>
				{{persona.equipo}}
			</td>
			<td><button> Leer más</button></td>
		</tr>
	</table>
		
	</div>
</div>

	<script type="text/javascript" src="static/js/jquery.js"></script>
	<script type="text/javascript" src="static/js/bootstrap.js"></script>
	<script type="text/javascript" src="static/js/angular/angular.js"></script>
	<script type="text/javascript" src="static/js/app.js"></script>
</body>
</html>
