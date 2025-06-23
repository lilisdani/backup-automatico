# Caminho da pasta de origem (o que será copiado)
$origem = "C:\Users\Elian\OneDrive\Documentos"

# Caminho da pasta de destino (onde será feito o backup)
$destinoBase = "D:\Backups"

# Data formatada
$data = Get-Date -Format "yyyy-MM-dd_HH-mm"

# Caminho final do backup com subpasta datada
$destino = Join-Path -Path $destinoBase -ChildPath "Backup_$data"

# Criar a pasta de destino
New-Item -ItemType Directory -Path $destino -Force

# Copiar arquivos
Copy-Item -Path $origem\* -Destination $destino -Recurse -Force

Write-Output "Backup realizado com sucesso em $destino"
