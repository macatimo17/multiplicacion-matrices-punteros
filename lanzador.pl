#!/usr/bin/perl

#Fichero para automatización de ejecución por lotes de un ejecutable
#dado parametros de entrada

$repeticiones = 30;
@ejecutables = ("matricesApp");
@matrizSize = ("100","200","400","800","1000","1200","2000","4000");
$path = "/home/maria/matrices_04_punteros/";

foreach $exe (@ejecutables) {
	foreach $size (@matrizSize) {
		$fichero = "$path"."Soluciones/"."$exe"."-size"."$size";
		#print("$fichero \n");
		for($i =0; $i<$repeticiones; $i++) {
			#print("$path$exe $size \n");
			system("$path$exe $size >> $fichero");
		}
	}
}

exit(1);
