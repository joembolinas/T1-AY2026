param(
    [Parameter(Mandatory=$true)]
    [ValidateSet("STUDY", "LECTURE", "RESEARCH", "ESSAY", "DISCUSSION", "EXAM", "ANALYSIS", "PERSPECTIVE", "CURRENT_EVENTS", "DEBATE", "SYNTHESIS", "EVALUATION", "PROGRESS", "CHALLENGE", "BREAKTHROUGH", "INSIGHT", "REFLECTION", "GOAL", "PLAN", "COURSE")]
    [string]$Type,
    
    [Parameter(Mandatory=$true)]
    [string]$Topic,
    
    [Parameter(Mandatory=$true)]
    [string]$Description,
    
    [Parameter(Mandatory=$true)]
    [ValidateSet("PLANNED", "IN_PROGRESS", "COMPLETED", "RESOLVED", "OBSTACLE", "INVESTIGATING", "BREAKTHROUGH", "POSITIVE", "NOTED", "STARTED", "PROGRESS", "ANALYZED", "EVALUATED")]
    [string]$Status
)

# Get current timestamp
$timestamp = [int][double]::Parse((Get-Date -UFormat %s))

# Create log entry
$logEntry = "[$timestamp] | $Type | $Topic | $Description | $Status"

# Append to global studies log
$logFile = "global-studies.log"
Add-Content -Path $logFile -Value $logEntry

# Display confirmation
Write-Host "✅ Logged: $Type - $Topic" -ForegroundColor Green
Write-Host "   🌍 $Description" -ForegroundColor Cyan
Write-Host "   📊 Status: $Status" -ForegroundColor Yellow
Write-Host ""

# Show recent entries (last 3)
Write-Host "📋 Recent Log Entries:" -ForegroundColor Magenta
Get-Content $logFile | Select-Object -Last 3 | ForEach-Object {
    Write-Host "   $_" -ForegroundColor Gray
}

# Usage examples
if ($Type -eq "COURSE" -and $Topic -eq "HELP") {
    Write-Host ""
    Write-Host "🎯 MO-SS033 The Contemporary World - Logging Examples:" -ForegroundColor Blue
    Write-Host ""
    Write-Host "🌍 Global Studies Sessions:" -ForegroundColor Yellow
    Write-Host '   .\logging-system\scripts\global-log.ps1 -Type "STUDY" -Topic "GLOBALIZATION" -Description "Economic impacts on developing nations" -Status "PROGRESS"'
    Write-Host '   .\logging-system\scripts\global-log.ps1 -Type "INSIGHT" -Topic "CULTURAL_RELATIVISM" -Description "Understanding different ethical frameworks globally" -Status "BREAKTHROUGH"'
    Write-Host ""
    Write-Host "📝 Research and Writing:" -ForegroundColor Yellow
    Write-Host '   .\logging-system\scripts\global-log.ps1 -Type "RESEARCH" -Topic "CLIMATE_POLICY" -Description "Comparing Paris Agreement implementation across nations" -Status "IN_PROGRESS"'
    Write-Host '   .\logging-system\scripts\global-log.ps1 -Type "ESSAY" -Topic "HUMAN_RIGHTS" -Description "Universal rights vs cultural practices thesis development" -Status "PLANNED"'
    Write-Host ""
    Write-Host "🔍 Critical Analysis:" -ForegroundColor Yellow
    Write-Host '   .\logging-system\scripts\global-log.ps1 -Type "ANALYSIS" -Topic "TRADE_WARS" -Description "Evaluating economic nationalism impact on global economy" -Status "COMPLETED"'
    Write-Host '   .\logging-system\scripts\global-log.ps1 -Type "PERSPECTIVE" -Topic "MIGRATION" -Description "Examining refugee crisis from multiple national viewpoints" -Status "ANALYZED"'
    Write-Host ""
    Write-Host "📰 Current Events:" -ForegroundColor Yellow
    Write-Host '   .\logging-system\scripts\global-log.ps1 -Type "CURRENT_EVENTS" -Topic "GEOPOLITICS" -Description "Analyzing recent UN Security Council resolutions" -Status "EVALUATED"'
    Write-Host '   .\logging-system\scripts\global-log.ps1 -Type "DEBATE" -Topic "SOVEREIGNTY" -Description "National sovereignty vs global governance tensions" -Status "DISCUSSED"'
    Write-Host ""
    Write-Host "🎯 Academic Progress:" -ForegroundColor Yellow
    Write-Host '   .\logging-system\scripts\global-log.ps1 -Type "DISCUSSION" -Topic "CLASS_PARTICIPATION" -Description "Contributed insights on cultural imperialism debate" -Status "COMPLETED"'
    Write-Host '   .\logging-system\scripts\global-log.ps1 -Type "REFLECTION" -Topic "WEEKLY" -Description "Improved understanding of global interconnectedness" -Status "POSITIVE"'
    Write-Host ""
}
