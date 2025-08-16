param(
    [Parameter(Mandatory=$true)]
    [ValidateSet("STUDY", "LECTURE", "LAB", "ASSIGNMENT", "QUIZ", "EXAM", "CONCEPT", "PROTOCOL", "TOOL", "SIMULATION", "TROUBLESHOOT", "CONFIG", "PROGRESS", "CHALLENGE", "BREAKTHROUGH", "REVIEW", "REFLECTION", "GOAL", "PLAN", "COURSE")]
    [string]$Type,
    
    [Parameter(Mandatory=$true)]
    [string]$Topic,
    
    [Parameter(Mandatory=$true)]
    [string]$Description,
    
    [Parameter(Mandatory=$true)]
    [ValidateSet("PLANNED", "IN_PROGRESS", "COMPLETED", "RESOLVED", "OBSTACLE", "INVESTIGATING", "BREAKTHROUGH", "POSITIVE", "NOTED", "STARTED", "PROGRESS")]
    [string]$Status
)

# Get current timestamp
$timestamp = [int][double]::Parse((Get-Date -UFormat %s))

# Create log entry
$logEntry = "[$timestamp] | $Type | $Topic | $Description | $Status"

# Append to course activity log
$logFile = "course-activity.log"
Add-Content -Path $logFile -Value $logEntry

# Display confirmation
Write-Host "Logged: $Type - $Topic" -ForegroundColor Green
Write-Host "   Description: $Description" -ForegroundColor Cyan
Write-Host "   Status: $Status" -ForegroundColor Yellow
Write-Host ""

# Show recent entries (last 3)
Write-Host "Recent Log Entries:" -ForegroundColor Magenta
Get-Content $logFile | Select-Object -Last 3 | ForEach-Object {
    Write-Host "   $_" -ForegroundColor Gray
}

# Usage examples
if ($Type -eq "COURSE" -and $Topic -eq "HELP") {
    Write-Host ""
    Write-Host "MO-IT104 Computer Networks - Logging Examples:" -ForegroundColor Blue
    Write-Host ""
    Write-Host "Study Sessions:" -ForegroundColor Yellow
    Write-Host "  course-log.ps1 -Type STUDY -Topic TCP_IP -Description 'Reading Chapter 3' -Status PROGRESS"
    Write-Host "  course-log.ps1 -Type CONCEPT -Topic OSI_MODEL -Description 'Understanding 7-layer model' -Status BREAKTHROUGH"
    Write-Host ""
    Write-Host "Lab Work:" -ForegroundColor Yellow
    Write-Host "  course-log.ps1 -Type LAB -Topic WIRESHARK -Description 'HTTP packet analysis' -Status COMPLETED"
    Write-Host "  course-log.ps1 -Type SIMULATION -Topic PACKET_TRACER -Description 'Building network topology' -Status IN_PROGRESS"
    Write-Host ""
    Write-Host "Academic Progress:" -ForegroundColor Yellow
    Write-Host "  course-log.ps1 -Type QUIZ -Topic WEEK3_QUIZ -Description 'Scored 85% on routing quiz' -Status COMPLETED"
    Write-Host "  course-log.ps1 -Type REFLECTION -Topic WEEKLY -Description 'Good progress on concepts' -Status POSITIVE"
    Write-Host ""
}
