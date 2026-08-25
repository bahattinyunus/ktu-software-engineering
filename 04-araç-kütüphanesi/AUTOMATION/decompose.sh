#!/bin/bash
# PAISE DECOMPOSER v1.0
# Break complex requirements into atomic AI tasks

set -euo pipefail

DECOMPOSER_VERSION="1.0.0"
TASK_ID=$(date +%s)
OUTPUT_DIR="./decomposed_tasks_${TASK_ID}"

echo "🔬 PAISE DECOMPOSER v${DECOMPOSER_VERSION}"
echo "Task ID: $TASK_ID"

mkdir -p "$OUTPUT_DIR"

# Function: Extract requirements from input file
extract_requirements() {
    local input_file=$1
    echo "📋 Extracting requirements from: $input_file"
    
    # Parse requirements (simple regex extraction)
    grep -E "^[A-Z][a-z]+:" "$input_file" | sort | uniq > "$OUTPUT_DIR/requirements.txt" || true
    cat "$OUTPUT_DIR/requirements.txt"
}

# Function: Generate task hierarchy
generate_hierarchy() {
    local requirement=$1
    local depth=${2:-1}
    
    if [ $depth -gt 3 ]; then
        return
    fi
    
    # Generate subtasks
    cat >> "$OUTPUT_DIR/hierarchy.json" <<EOF
{
  "requirement": "$requirement",
  "depth": $depth,
  "subtasks": [
    {"task": "Analyze $requirement", "complexity": "medium"},
    {"task": "Design solution for $requirement", "complexity": "high"},
    {"task": "Implement $requirement", "complexity": "high"},
    {"task": "Test $requirement", "complexity": "medium"},
    {"task": "Document $requirement", "complexity": "low"}
  ],
  "estimated_effort_hours": $((2 + 4 * depth))
}
EOF
}

# Function: Create task templates
create_task_templates() {
    local task_count=$1
    
    for ((i=1; i<=task_count; i++)); do
        cat > "$OUTPUT_DIR/task_${i}.md" <<EOF
# Task $i: [SPECIFY TASK NAME]

## Objective
[Clear, measurable outcome]

## Context
- Related to: [parent requirement]
- Dependencies: [other tasks]
- Estimated effort: [hours]

## Success Criteria
- [ ] Criterion 1
- [ ] Criterion 2
- [ ] Criterion 3

## Implementation Notes
- Key consideration 1
- Key consideration 2

## Rollback Plan
If this task fails:
1. [Fallback step 1]
2. [Fallback step 2]
EOF
    done
}

# Main execution
if [ $# -lt 1 ]; then
    echo "Usage: $0 <requirements_file> [task_count]"
    echo "Example: $0 project_requirements.md 5"
    exit 1
fi

REQ_FILE=$1
TASK_COUNT=${2:-10}

if [ ! -f "$REQ_FILE" ]; then
    echo "❌ Requirements file not found: $REQ_FILE"
    exit 1
fi

extract_requirements "$REQ_FILE"
echo ""
echo "📊 Generating task hierarchy..."
generate_hierarchy "Core Requirement" 1
echo ""
echo "🎯 Creating ${TASK_COUNT} task templates..."
create_task_templates "$TASK_COUNT"

echo ""
echo "✅ Decomposition complete!"
echo "📁 Output directory: $OUTPUT_DIR"
echo ""
echo "Generated files:"
ls -lah "$OUTPUT_DIR"
echo ""
echo "Next steps:"
echo "1. Review requirements.txt"
echo "2. Edit task_*.md files"
echo "3. Assign tasks to AI agents"
echo "4. Track progress in task_${TASK_ID}.log"
