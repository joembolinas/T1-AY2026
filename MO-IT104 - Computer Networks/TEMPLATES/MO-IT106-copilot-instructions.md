# Copilot Instructions - MO-IT106 Data Analytics Fundamentals

## Project Overview
This is a structured academic course repository for Data Analytics Fundamentals (MO-IT106) following a semester-long learning progression. The codebase is organized around educational materials, logging systems for study tracking, and progressive weekly content delivery focused on statistical analysis, data visualization, and analytical tools.

**Parent Workspace**: This course is part of the T1-AY2026 semester containing three parallel courses:
- `MO-IT104 - Computer Networks`
- `MO-IT106 - Data Analytics Fundamentals` (this repository)
- `MO-SS033 - The Contemporary World`

Each course follows identical logging architecture but with course-specific parameters and validation sets.

## Architecture Patterns

### Academic Structure
- **Weekly Organization**: `WEEK-1/` through `WEEK-12/` contain SOURCE (input materials) and OUTPUT (student work) subdirectories
- **SOURCE Content**: Learning materials, lecture notes, LMS content, and school-provided information (all external inputs)
- **OUTPUT Content**: Student-generated work, assignments, reflections, data analysis projects, and visualizations
- **Logging System**: Centralized academic progress tracking via `logging-system/` with PowerShell automation
- **Course Materials**: `COURSE DETAILS/` contains syllabus and institutional documentation
- **Progress Tracking**: `analytics-activity.log` serves as the master activity timeline

### Key Components
- **Automated Logging**: `logging-system/scripts/analytics-log.ps1` provides structured academic logging with data analytics-specific types (ANALYSIS, VISUALIZATION, STATISTICS, etc.)
- **Template System**: `logging-system/templates/` contains markdown templates for different analytical activities
- **Documentation Patterns**: Each activity follows timestamp-based logging: `[timestamp] | TYPE | TOPIC | DESCRIPTION | STATUS`

## Essential Workflows

### Academic Logging Workflow
```powershell
# Primary logging command structure (Windows PowerShell)
powershell ".\logging-system\scripts\analytics-log.ps1 -Type 'ANALYSIS' -Topic 'SALES_DATA' -Description 'Descriptive statistics on Q3 performance' -Status 'PROGRESS'"

# Alternative batch script (universal Windows compatibility)
.\logging-system\scripts\analytics-entry.bat "VISUALIZATION" "EXCEL_CHARTS" "Created pivot charts for regional comparison" "COMPLETED"

# Help command to see all examples
powershell ".\logging-system\scripts\analytics-log.ps1 -Type 'COURSE' -Topic 'HELP' -Description 'Show examples' -Status 'NOTED'"
```

### Daily Study Session Pattern
```powershell
# Morning planning
powershell ".\logging-system\scripts\analytics-log.ps1 -Type 'GOAL' -Topic 'TODAY' -Description 'Complete statistical analysis chapter, practice Excel functions' -Status 'PLANNED'"

# Real-time learning moments
powershell ".\logging-system\scripts\analytics-log.ps1 -Type 'STATISTICS' -Topic 'CORRELATION' -Description 'Finally understand correlation vs causation distinction' -Status 'BREAKTHROUGH'"

# Evening reflection
powershell ".\logging-system\scripts\analytics-log.ps1 -Type 'REFLECTION' -Topic 'PROGRESS' -Description 'Good progress on data visualization concepts' -Status 'POSITIVE'"
```

### Valid Log Types
- Academic: `STUDY`, `LECTURE`, `PROJECT`, `ASSIGNMENT`, `QUIZ`, `EXAM`, `REVIEW`, `REFLECTION`
- Technical: `ANALYSIS`, `VISUALIZATION`, `TOOL`, `DATASET`, `STATISTICS`, `CODING`
- Progress: `CONCEPT`, `PROGRESS`, `CHALLENGE`, `BREAKTHROUGH`, `INSIGHT`, `GOAL`, `PLAN`

### Status Classifications
- Active: `PLANNED`, `IN_PROGRESS`, `STARTED`, `PROGRESS`, `INVESTIGATING`
- Completed: `COMPLETED`, `RESOLVED`, `BREAKTHROUGH`, `POSITIVE`, `NOTED`, `ANALYZED`
- Blocked: `OBSTACLE`

## Project-Specific Conventions

### File Naming
- Week materials: Numbered files like `1-reflection.md`, `-1.md` (negative indicates source material)
- SOURCE files: Always use negative numbers (e.g., `-1.md`, `-2.md`) for materials from LMS/school
- OUTPUT files: Use positive numbers (e.g., `1-analysis.md`, `2-visualization.md`) for student work
- Templates: ALL_CAPS with descriptive suffixes (e.g., `PROJECT_SESSION_TEMPLATE.md`)
- Logs: Structured timestamps with pipe-delimited fields

### Troubleshooting Common Issues
```powershell
# PowerShell execution policy issues
Get-ExecutionPolicy
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser

# Always navigate to course directory first
cd "c:\Users\ADMIN\Desktop\School File\T1-AY2026\MO-IT106 - Data Analytics Fundamentals"

# Or use full paths for scripts
& "c:\...\logging-system\scripts\analytics-log.ps1" -Type "ANALYSIS" -Topic "TEST" -Description "Testing" -Status "COMPLETED"
```

### Documentation Patterns
1. **Pre-activity Planning**: Always log preparation steps with `PLANNED` status
2. **Real-time Progress**: Log during work with `IN_PROGRESS`/`PROGRESS` status
3. **Post-activity Reflection**: Document outcomes with `COMPLETED`/`BREAKTHROUGH` status
4. **Problem Documentation**: Use `CHALLENGE`/`OBSTACLE` → `SOLUTION`/`RESOLVED` pattern

### Course-Specific Context
- **Data Analysis Tools**: Excel, statistical software, basic programming languages
- **Project Focus**: Data visualization, statistical analysis, descriptive analytics
- **Skill Development**: Emphasis on practical data analysis and interpretation skills
- **Assessment Structure**: Projects, statistical reports, data visualization assignments

## Integration Points

### External Dependencies
- **Microsoft Excel**: Primary data analysis and visualization tool
- **Statistical Software**: R, Python, or other analytics platforms
- **PowerShell**: Automation and logging infrastructure (Windows-centric)

### Multi-Course Academic System
- **Sister Courses**: Part of T1-AY2026 semester with MO-IT104 (Computer Networks) and MO-SS033 (Contemporary World)
- **Cross-Course Logging**: Each course has its own logging system with course-specific parameters
- **Workspace Pattern**: This is one of three parallel course repositories with identical logging architecture
- **VS Code Integration**: Optimized for markdown preview, auto-save, and word wrap

### Academic Calendar Integration
- Assignment deadlines are semester-specific (Sep-Nov 2025)
- Weekly progression follows academic calendar structure
- Logging timestamps enable progress analytics

### VS Code Workspace Configuration
```json
{
    "editor.wordWrap": "on",
    "files.autoSave": "afterDelay", 
    "markdown.preview.breaks": true
}
```

## Development Guidelines

When creating new content or modifying existing materials:
1. **Maintain Academic Structure**: Preserve WEEK-X/SOURCE and OUTPUT separation
2. **Use Logging System**: All activities should generate appropriate log entries
3. **Follow Template Patterns**: Reference existing templates for consistency
4. **Respect Learning Progression**: Content builds sequentially through analytical concepts
5. **Document Real Learning**: Focus on actual educational outcomes, not aspirational goals
6. **SOURCE vs OUTPUT Distinction**: 
   - SOURCE folders contain LMS materials, lecture notes, school-provided content (read-only reference)
   - OUTPUT folders contain student-created work, data analyses, visualizations, assignments
   - Always log when working with SOURCE materials for review or creating OUTPUT materials

## Key Files for Understanding
- `README.md`: Course overview and assignment schedule
- `logging-system/README.md`: Complete logging system documentation
- `COURSE DETAILS/SYLLABUS.md`: Official course requirements and structure
- `analytics-activity.log`: Master timeline of all academic activities
- `logging-system/scripts/analytics-log.ps1`: Primary automation tool
