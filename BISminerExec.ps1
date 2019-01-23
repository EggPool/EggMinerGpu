#########################################
#
# Variable to be modified if necessary
#
$timeOFF = "11:26"
$timeON  = "11:27"
$fileLog = "BISminerExec.log"
#$execMiner = "eggminer.exe"
$execMiner = "notepad.exe"
$workingDirectoryMiner = "C:\EggPool" 
#
#
#########################################

cls

$minerProcessObj = $null

$infoLog = "$((Get-Date).ToString('yyyy:MM:dd HH:mm')) Miner will not run between $timeOFF and $timeON"
Write-Host $infoLog -ForegroundColor Green
Add-Content $fileLog $infoLog

while($true)
{
    $DateTimeNow = (Get-Date).ToString('HH:mm')
    $Run = $false
        
    if ($DateTimeNow -lt $timeOFF) { $Run = $true }
    if ($DateTimeNow -ge $timeON) { $Run = $true }

    if ($Run -eq $true -and $minerProcessObj -eq $null)  
    {
        $minerProcessObj = Start-process -FilePath $execMiner -WorkingDirectory $workingDirectoryMiner -PassThru

        $infoLog = "$((Get-Date).ToString('yyyy:MM:dd HH:mm')) Starting Miner PID: $($processObj.Id)"
        Write-Host $infoLog -ForegroundColor Green
        Add-Content $fileLog $infoLog
    }
    elseif ($Run -eq $false -and $minerProcessObj -ne $null)
    {
        Stop-Process -Id $minerProcessObj.Id

        $infoLog = "$((Get-Date).ToString('yyyy:MM:dd HH:mm')) Stopping Miner PID: $($processObj.Id)"
        Write-Host $infoLog -ForegroundColor Yellow
        Add-Content $fileLog $infoLog

        $minerProcessObj = $null
    }

    Start-Sleep -s 2
}
