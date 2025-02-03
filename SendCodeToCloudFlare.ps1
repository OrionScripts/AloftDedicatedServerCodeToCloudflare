$codeFile = "PATH_TO_YOUR_SERVER_ROOM_CODE_TEXT_FILE"
$workerURL = "URL_FOR_YOUR_CLOUDFLARE_WORKER"

$code = Get-Content $codeFile -Raw
$body = @{ "code" = $code.Trim() } | ConvertTo-Json -Compress  # <-- Compress JSON

Invoke-RestMethod -Uri $workerURL -Method Post -Body $body -ContentType "application/json"
