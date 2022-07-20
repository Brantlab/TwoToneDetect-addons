param ($Des, $Time, $mp3)

$filename = split-path $mp3 -leaf
$domain = "<Your base url>" #Example https://dispatch.brantlab.com/
$Url = $domain + $filename

# This header tells we're passing a JSON payload
$header = @{
  "Content-Type"="application/json"
} 

## PUSHOVER
$data = @{
    token = "<APP-TOKEN>";
    message = "Dispatched at $time";
    title = "$des Fire Department";
    url = "$url";
    priority = "1";
    url_title = "Audio Link";
    user = "<USER-TOKEN>";
    sound = "Alarm_custom";
}
Invoke-RestMethod -Method Post -Uri "https://api.pushover.net/1/messages.json" -Body $data | Out-Null
