# Copilot Instructions - MO-IT104 Computer Networks Course

## Project Overview
This is a structured academic course repository for Computer Networks (MO-IT104) following a semester-long learning progression. The codebase is organized around educational materials, logging systems for study tracking, and progressive weekly content delivery focused on OSI/TCP-IP networking models.

**Parent Workspace**: This course is part of the T1-AY2026 semester containing three parallel courses:
- `MO-IT104 - Computer Networks` (this repository)
- `MO-IT106 - Data Analytics Fundamentals` 
- `MO-SS033 - The Contemporary World`

Each course follows identical logging architecture but with course-specific parameters and validation sets.

## Architecture Patterns

### Academic Structure
- **Weekly Organization**: `WEEK-1/` through `WEEK-12/` contain SOURCE (input materials) and OUTPUT (student work) subdirectories
- **SOURCE Content**: Learning materials, lecture notes, LMS content, and school-provided information (all external inputs)
- **OUTPUT Content**: Student-generated work, assignments, reflections, and practice materials
- **Logging System**: Centralized academic progress tracking via `logging-system/` with PowerShell automation
- **Course Materials**: `COURSE DETAILS/` contains syllabus and institutional documentation
- **Progress Tracking**: `course-activity.log` serves as the master activity timeline

### Key Components
- **Automated Logging**: `logging-system/scripts/course-log.ps1` provides structured academic logging with predefined types (STUDY, LAB, CONCEPT, etc.)
- **Template System**: `logging-system/templates/` contains markdown templates for different academic activities
- **Documentation Patterns**: Each activity follows timestamp-based logging: `[timestamp] | TYPE | TOPIC | DESCRIPTION | STATUS`

## Essential Workflows

### Academic Logging Workflow
```powershell
# Primary logging command structure (Windows PowerShell)
powershell ".\logging-system\scripts\course-log.ps1 -Type 'STUDY' -Topic 'TCP_IP' -Description 'Reading Chapter 3' -Status 'PROGRESS'"

# Alternative batch script (universal Windows compatibility)
.\logging-system\scripts\study-entry.bat "LAB" "WIRESHARK" "HTTP traffic analysis completed" "COMPLETED"

# Help command to see all examples
powershell ".\logging-system\scripts\course-log.ps1 -Type 'COURSE' -Topic 'HELP' -Description 'Show examples' -Status 'NOTED'"
```

### Daily Study Session Pattern
```powershell
# Morning planning
powershell ".\logging-system\scripts\course-log.ps1 -Type 'GOAL' -Topic 'TODAY' -Description 'Complete Chapter 4, finish HTTP analysis lab' -Status 'PLANNED'"

# Real-time learning moments
powershell ".\logging-system\scripts\course-log.ps1 -Type 'CONCEPT' -Topic 'TCP_HANDSHAKE' -Description 'Finally understand sequence number progression' -Status 'BREAKTHROUGH'"

# Evening reflection
powershell ".\logging-system\scripts\course-log.ps1 -Type 'REFLECTION' -Topic 'PROGRESS' -Description 'Good progress, feeling confident about packet analysis' -Status 'POSITIVE'"
```

### Valid Log Types
- Academic: `STUDY`, `LECTURE`, `ASSIGNMENT`, `QUIZ`, `EXAM`, `REVIEW`, `REFLECTION`
- Technical: `LAB`, `PROTOCOL`, `TOOL`, `SIMULATION`, `TROUBLESHOOT`, `CONFIG`
- Progress: `CONCEPT`, `PROGRESS`, `CHALLENGE`, `BREAKTHROUGH`, `GOAL`, `PLAN`

### Status Classifications
- Active: `PLANNED`, `IN_PROGRESS`, `STARTED`, `PROGRESS`, `INVESTIGATING`
- Completed: `COMPLETED`, `RESOLVED`, `BREAKTHROUGH`, `POSITIVE`, `NOTED`
- Blocked: `OBSTACLE`

## Project-Specific Conventions

### File Naming
- Week materials: Numbered files like `1-reflection.md`, `-1.md` (negative indicates source material)
- SOURCE files: Always use negative numbers (e.g., `-1.md`, `-2.md`) for materials from LMS/school
- OUTPUT files: Use positive numbers (e.g., `1-reflection.md`, `2-assignment.md`) for student work
- Templates: ALL_CAPS with descriptive suffixes (e.g., `LAB_SESSION_TEMPLATE.md`)
- Logs: Structured timestamps with pipe-delimited fields

### Troubleshooting Common Issues
```powershell
# PowerShell execution policy issues
Get-ExecutionPolicy
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser

# Always navigate to course directory first
cd "c:\Users\ADMIN\Desktop\School File\T1-AY2026\MO-IT104 - Computer Networks"

# Or use full paths for scripts
& "c:\...\logging-system\scripts\course-log.ps1" -Type "STUDY" -Topic "TEST" -Description "Testing" -Status "COMPLETED"
```

### Documentation Patterns
1. **Pre-activity Planning**: Always log preparation steps with `PLANNED` status
2. **Real-time Progress**: Log during work with `IN_PROGRESS`/`PROGRESS` status
3. **Post-activity Reflection**: Document outcomes with `COMPLETED`/`BREAKTHROUGH` status
4. **Problem Documentation**: Use `CHALLENGE`/`OBSTACLE` → `SOLUTION`/`RESOLVED` pattern

### Course-Specific Context
- **MotorPH Project**: Terminal assessment involves designing network infrastructure for this fictional company
- **Packet Tracer Focus**: Cisco simulation tool is primary technical platform
- **CCNA Preparation**: Course designed as first step toward Cisco certification
- **Milestone Structure**: MS1 (Architecture), MS2 (Implementation), Terminal Assessment (Documentation)

## Integration Points

### External Dependencies
- **Cisco Packet Tracer**: Primary network simulation environment
- **Wireshark**: Network protocol analysis tool
- **PowerShell**: Automation and logging infrastructure (Windows-centric)

### Multi-Course Academic System
- **Sister Courses**: Part of T1-AY2026 semester with MO-IT106 (Data Analytics) and MO-SS033 (Contemporary World)
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
4. **Respect Learning Progression**: Content builds sequentially through OSI layers
5. **Document Real Learning**: Focus on actual educational outcomes, not aspirational goals
6. **SOURCE vs OUTPUT Distinction**: 
   - SOURCE folders contain LMS materials, lecture notes, school-provided content (read-only reference)
   - OUTPUT folders contain student-created work, practice exams, reflections, assignments
   - Always log when working with SOURCE materials for review or creating OUTPUT materials

## Key Files for Understanding
- `README.md`: Course overview and assignment schedule
- `logging-system/README.md`: Complete logging system documentation
- `COURSE DETAILS/SYLLABUS.md`: Official course requirements and structure
- `course-activity.log`: Master timeline of all academic activities
- `logging-system/scripts/course-log.ps1`: Primary automation tool
