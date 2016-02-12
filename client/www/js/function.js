
//Module
var utama =  angular.module('api', ['ngRoute']);
var url_web = "http://localhost/project/smsMass/";


//Factory

utama.factory('factoryGrup', function($http){

	var factoryGrup = {};

	factoryGrup.getGrup = function(){
		return $http.get(url_web+"api/dataGrup.php");
	};
	
	factoryGrup.putGrup = function(datas){
		return $http.post(url_web+"api/addGrup.php", datas);
	};

	

	return factoryGrup;
});

utama.factory('factoryKontak', function($http){

	var factoryKontak = {};

	factoryKontak.getKontak = function(){
		return $http.get(url_web+"api/dataKontak.php");
	};
	
	factoryKontak.putKontak = function(datas){
		return $http.post(url_web+"api/addKontak.php", datas);
	};

	

	return factoryKontak;
});


//Directive untuk Templating
utama.directive('headerTitle', function(){
	return{
		restrict : 'A',
		templateUrl : 'header.html'
		
	}
});

utama.directive('headerGrup', function(){
	return{
		restrict : 'A',
		templateUrl : 'addGrup.html',
		controller : 'addGrup'
		
	}
});


//Controller
utama.controller('addGrup', function($scope, $http, factoryGrup){

	$scope.tambahData = function(){

		databaru = {
			nama_grup : $scope.databaru.nama,
			ket : $scope.databaru.ket
		};

		factoryGrup.putGrup(databaru).success(function(hasil){

			$scope.data.push({
				nama_grup : $scope.databaru.nama,
				ket : $scope.databaru.ket
			});

			$scope.databaru.nama = '';
			$scope.databaru.ket = '';

			alert(hasil);

		});
	};
});

utama.controller('listGrup', function($scope, $http){  				
		$http.get(url_web+"api/dataGrup.php").success(function(resp){
		$scope.grups = resp; 
		});
	}); 


//Route
utama.config(function($routeProvider){
	$routeProvider
	.when('/grup',{
		templateUrl: 'grup.html',
		controller : function($scope, factoryGrup){
		  	factoryGrup.getGrup().success(function(hasil){

		  		$scope.data = hasil;

		  	});
		},
		
	})
	.when('/info',{
		templateUrl: 'info.html'
	})
	.when('/pesan',{
		templateUrl: 'pesan.html'
	})
	.when('/kontak',{
		templateUrl: 'kontak.html',
		controller : function($scope, factoryKontak){
		  	factoryKontak.getKontak().success(function(hasil){

		  		$scope.data = hasil;

		  	});
		},
	})
	.when('/',{
		templateUrl: 'home.html'
	})
	.otherwise({
		template : 'not found'
	})
});
