param(
    [Parameter(Mandatory=$true)]
    [ValidateSet("STUDY", "LECTURE", "PROJECT", "ASSIGNMENT", "QUIZ", "EXAM", "ANALYSIS", "VISUALIZATION", "TOOL", "DATASET", "STATISTICS", "CODING", "PROGRESS", "CHALLENGE", "BREAKTHROUGH", "INSIGHT", "REFLECTION", "GOAL", "PLAN", "COURSE")]
    [string]$Type,
    
    [Parameter(Mandatory=$true)]
    [string]$Topic,
    
    [Parameter(Mandatory=$true)]
    [string]$Description,
    
    [Parameter(Mandatory=$true)]
    [ValidateSet("PLANNED", "IN_PROGRESS", "COMPLETED", "RESOLVED", "OBSTACLE", "INVESTIGATING", "BREAKTHROUGH", "POSITIVE", "NOTED", "STARTED", "PROGRESS", "ANALYZED")]
    [string]$Status
)

# Get current timestamp
$timestamp = [int][double]::Parse((Get-Date -UFormat %s))

# Create log entry
$logEntry = "[$timestamp] | $Type | $Topic | $Description | $Status"

# Append to analytics activity log
$logFile = "analytics-activity.log"
Add-Content -Path $logFile -Value $logEntry

# Display confirmation
Write-Host "✅ Logged: $Type - $Topic" -ForegroundColor Green
Write-Host "   📊 $Description" -ForegroundColor Cyan
Write-Host "   📈 Status: $Status" -ForegroundColor Yellow
Write-Host ""

# Show recent entries (last 3)
Write-Host "📋 Recent Log Entries:" -ForegroundColor Magenta
Get-Content $logFile | Select-Object -Last 3 | ForEach-Object {
    Write-Host "   $_" -ForegroundColor Gray
}

# Usage examples
if ($Type -eq "COURSE" -and $Topic -eq "HELP") {
    Write-Host ""
    Write-Host "🎯 MO-IT106 Data Analytics Fundamentals - Logging Examples:" -ForegroundColor Blue
    Write-Host ""
    Write-Host "📊 Data Analysis Sessions:" -ForegroundColor Yellow
    Write-Host '   .\logging-system\scripts\analytics-log.ps1 -Type "ANALYSIS" -Topic "SALES_DATA" -Description "Descriptive statistics on Q3 sales performance" -Status "PROGRESS"'
    Write-Host '   .\logging-system\scripts\analytics-log.ps1 -Type "INSIGHT" -Topic "CUSTOMER_PATTERNS" -Description "Discovered seasonal buying behavior patterns" -Status "BREAKTHROUGH"'
    Write-Host ""
    Write-Host "📈 Visualization Work:" -ForegroundColor Yellow
    Write-Host '   .\logging-system\scripts\analytics-log.ps1 -Type "VISUALIZATION" -Topic "EXCEL_CHARTS" -Description "Created pivot charts for regional comparison" -Status "COMPLETED"'
    Write-Host '   .\logging-system\scripts\analytics-log.ps1 -Type "VISUALIZATION" -Topic "TABLEAU_DASHBOARD" -Description "Building interactive sales dashboard" -Status "IN_PROGRESS"'
    Write-Host ""
    Write-Host "📚 Statistical Learning:" -ForegroundColor Yellow
    Write-Host '   .\logging-system\scripts\analytics-log.ps1 -Type "STATISTICS" -Topic "REGRESSION" -Description "Linear regression model for price prediction" -Status "COMPLETED"'
    Write-Host '   .\logging-system\scripts\analytics-log.ps1 -Type "STATISTICS" -Topic "HYPOTHESIS_TESTING" -Description "T-test comparison of two sample means" -Status "ANALYZED"'
    Write-Host ""
    Write-Host "🛠️ Tool Mastery:" -ForegroundColor Yellow
    Write-Host '   .\logging-system\scripts\analytics-log.ps1 -Type "TOOL" -Topic "PYTHON_PANDAS" -Description "Data manipulation and cleaning techniques" -Status "PROGRESS"'
    Write-Host '   .\logging-system\scripts\analytics-log.ps1 -Type "CODING" -Topic "R_SCRIPTS" -Description "Automated statistical analysis workflow" -Status "COMPLETED"'
    Write-Host ""
    Write-Host "📋 Project Documentation:" -ForegroundColor Yellow
    Write-Host '   .\logging-system\scripts\analytics-log.ps1 -Type "PROJECT" -Topic "CUSTOMER_SEGMENTATION" -Description "Clustering analysis to identify customer groups" -Status "IN_PROGRESS"'
    Write-Host '   .\logging-system\scripts\analytics-log.ps1 -Type "REFLECTION" -Topic "WEEKLY" -Description "Good progress on statistical concepts this week" -Status "POSITIVE"'
    Write-Host ""
}
