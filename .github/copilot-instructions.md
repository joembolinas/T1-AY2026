# T1-AY2026 Academic Logging System - AI Agent Instructions

## Project Overview
This is a comprehensive academic logging ecosystem for Term 1, Academic Year 2026, covering three courses with specialized learning documentation systems. Each course has its own logging infrastructure with PowerShell automation scripts and structured templates.

## Architecture Patterns

### Course Structure
Each course follows the same architectural pattern:
```
MO-{COURSE}/ 
├── {course}-activity.log          # Central activity log (PowerShell generated)
├── COURSE DETAILS/               # Syllabus and course info
├── logging-system/               # Course-specific automation
│   ├── scripts/{course}-log.ps1  # Primary logging script
│   └── templates/                # Structured learning templates
└── WEEK-{1-12}/                 # Weekly materials
    ├── SOURCE/                   # Course materials (gitignored)
    └── OUTPUT/                   # Student work products
```

### Key Course Contexts
- **MO-IT104 (Computer Networks)**: Technical protocols, lab configs, Wireshark analysis
- **MO-IT106 (Data Analytics)**: Statistical analysis, visualizations, dataset exploration
- **MO-SS033 (Contemporary World)**: Critical thinking, research methodology, global issues

## Essential Workflows

### Logging Commands
All courses use PowerShell scripts with consistent parameter patterns:
```powershell
.\logging-system\scripts\{course}-log.ps1 -Type "STUDY|LAB|ASSIGNMENT" -Topic "TOPIC_NAME" -Description "Activity description" -Status "PROGRESS|COMPLETED"
```

### Valid Entry Types
- **Academic**: STUDY, LECTURE, ASSIGNMENT, QUIZ, EXAM, REVIEW, REFLECTION
- **Technical**: LAB, PROTOCOL, TOOL, SIMULATION, TROUBLESHOOT, CONFIG
- **Progress**: PROGRESS, CHALLENGE, BREAKTHROUGH, GOAL, PLAN

### Log Format
All activity logs follow timestamp-pipe-delimited format:
`[UNIX_TIMESTAMP] | TYPE | TOPIC | DESCRIPTION | STATUS`

## Development Conventions

### File Patterns
- Course materials go in `WEEK-{N}/SOURCE/` (ignored by git)
- Student outputs go in `WEEK-{N}/OUTPUT/`
- Templates use UPPERCASE filenames with underscores
- Scripts use kebab-case with course prefix

### PowerShell Script Structure
- Mandatory parameter validation with `ValidateSet`
- Unix timestamp generation with `[int][double]::Parse((Get-Date -UFormat %s))`
- Color-coded console output (Green for success, Cyan for details, Yellow for status)

### Template System
Each course has 5 core templates in `logging-system/templates/`:
- `DAILY_STUDY_TEMPLATES.md` - Session planning formats
- `WEEKLY_REVIEW_TEMPLATE.md` - Weekly reflection structure
- `ASSIGNMENT_TRACKING.md` - Project progress tracking
- `LAB_SESSION_TEMPLATE.md` - Technical work documentation
- `EXAM_PREP_TEMPLATE.md` - Assessment preparation

## Integration Points

### Cross-Course Dependencies
- Shared `.vscode/academic-logging.code-snippets` for universal snippets
- Common `FORMAT/` directory for style guidelines
- Consistent PowerShell parameter validation across all course scripts

### Windows Environment
- Primary shell: bash.exe, but scripts are PowerShell (.ps1)
- Batch file alternatives provided (.bat)
- Windows-style paths with spaces require quotes

## Critical File Locations
- Main documentation: `README.md` (master guide with course-specific quick starts)
- Course automation: `{COURSE}/logging-system/scripts/{course}-log.ps1`
- Learning templates: `{COURSE}/logging-system/templates/`
- Weekly structure: `{COURSE}/WEEK-{1-12}/SOURCE|OUTPUT/`
