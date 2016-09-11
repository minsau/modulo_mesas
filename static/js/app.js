'use strict';
var angular_model = angular.module('mesasTematicas', [ ]);
var show = 0;

angular_model.controller('temasMesas',function($scope,$http){
	$http.get('modelo.php').success(function (data) {
		$scope.mesas = data
	});

	$scope.mostrar = function (id){
			$http.get('modelo.php?id='+id).success(function (datos) {
				$scope.mes = datos
			});

		}

	$scope.integrantes = function(id){

		$http.get('integrantes.php?id='+id).success(function (datos){
			$scope.personas = datos
			console.log(datos[0]);
		});	
	}

});




$('#verIntegrantes').click(function(){
	$('#info').fadeOut();
	$('#personas').fadeIn();
	console.log("Que show");
});


$('#regresar').click(function(){
	$('#personas').fadeOut();
	$('#info').fadeIn();
	console.log("Que show");
});

$('#btnInforme').click(function(){
	if(show == 0){
		$('#informe').show();
		show = 1;

	}else {
		$('#informe').hide();
		show = 0;
	}
});
/*angular_model.controller('integrantes',function($scope,$http,id){
	$http.get('integrantes.php?id='+id).success(function (data){
		$scope.personas = data
	});
});
    var countryApp = angular.module('countryApp', []);
      countryApp.controller('CountryCtrl', function ($scope, $http){
        $http.get('category.php').success(function(data) {
          $scope.countries = data;
        });
      });*/