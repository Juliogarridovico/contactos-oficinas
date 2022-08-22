clear-host










#https://www.google.com/maps/search/?api=1&query=<lat>,<lng>
#https://www.google.com/maps/search/?api=1&query=41.572533,2.052787
#para conseguir la latitud y longitud, en el movil dejar pulsado un segundo el sitio y saldra en la ventana de busqueda
#https://www.google.com/maps/place/Carrer+de+test,+41,+08207
#$acronimo = read-host -Prompt 'test'
#$oficina = Get-Content -Raw -Path ".\oficinas\$acronimo.json" | ConvertFrom-Json 
#$test = Import-Csv -Path .\oficinas.csv 



#import-csv -Delimiter ";" ".\oficinas.csv"  | ConvertTo-Json | Add-Content -Path ".\oficinas\output.json"
$acronimo = read-host -Prompt 'Escribe el acronimo de la oficina'



if (Test-Path -Path ".\oficinas\$acronimo.json" -PathType Leaf){
Get-Content -Raw -Path ".\oficinas\$acronimo.json" | ConvertFrom-Json | Format-Table
Write-host "Enlaces a google maps"
write-host "https://www.google.com/maps/search/?api=1&query=41.572533,2.052787"


}else{
write-host "false"
}



#read-host -Prompt 'intro para salir'