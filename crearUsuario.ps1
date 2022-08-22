$usuarios = import-csv -Delimiter ";" ".\usuarios.csv"  

foreach( $usuario in $usuarios){
$correo = $usuario.correo
$usuario | ConvertTo-Json | Add-Content -Path ".\usuarios\$correo.json"
}