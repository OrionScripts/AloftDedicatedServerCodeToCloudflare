$codeFile = "I:\aloftdedicatedserver\Aloft\ServerRoomCode.txt"
$workerURL = "https://alofttest.orion880916.workers.dev/"

$code = Get-Content $codeFile -Raw
$body = @{ "code" = $code.Trim() } | ConvertTo-Json -Compress  # <-- Compress JSON

Invoke-RestMethod -Uri $workerURL -Method Post -Body $body -ContentType "application/json"