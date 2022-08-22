$oficinas = import-csv -Delimiter ";" ".\oficinas.csv"  

foreach( $oficina in $oficinas){
$acronimo = $oficina.Acronimo
$oficina | ConvertTo-Json | Add-Content -Path ".\oficinas\$acronimo.json"
}