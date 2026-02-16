#!/bin/bash
# Council of Elders - Installation Script
# Installs all team member agents to ~/.claude/agents/

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SOURCE_DIR="$SCRIPT_DIR/agents"
TARGET_DIR="$HOME/.claude/agents"

# Check source directory exists
if [ ! -d "$SOURCE_DIR" ]; then
    echo "Error: agents/ directory not found in $SCRIPT_DIR"
    exit 1
fi

# Create target directory if needed
mkdir -p "$TARGET_DIR"

# Count agents
AGENT_COUNT=$(ls -1 "$SOURCE_DIR"/*.md 2>/dev/null | wc -l | tr -d ' ')

if [ "$AGENT_COUNT" -eq 0 ]; then
    echo "Error: No agent files found in $SOURCE_DIR"
    exit 1
fi

echo "Installing Council of Elders agents..."
echo "  Source: $SOURCE_DIR"
echo "  Target: $TARGET_DIR"
echo ""

# Copy each agent
for agent in "$SOURCE_DIR"/*.md; do
    filename=$(basename "$agent")
    echo "  Installing: $filename"
    cp "$agent" "$TARGET_DIR/$filename"
done

echo ""
echo "Installed $AGENT_COUNT agents successfully."
echo ""
echo "The team:"
echo "  - archibald (Tech Lead)"
echo "  - aldric (Principal - Methodical)"
echo "  - bramwell (Principal - Creative)"
echo "  - mortimer (Security)"
echo "  - osric (Ops/Resilience)"
echo "  - thornley (Tester)"
echo "  - winifred (Architect)"
echo "  - theodora (Concurrency)"
echo "  - constance (Documenter)"
echo "  - edric (Sceptic)"
echo "  - gloriana (UX)"
echo "  - phineas (Pragmatist)"
echo "  - ignatius (Chaos Agent)"
echo "  - operator (The Operator)"
