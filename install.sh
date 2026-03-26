#!/usr/bin/env bash
set -euo pipefail

# Social Policy Research — Skill Pack Installer
# Installs skills to ~/.claude/skills/ for use in Claude Code, Desktop, and Cowork.

REPO_URL="https://github.com/foundationforpuertorico/social-policy-research"
SKILLS_DIR="${HOME}/.claude/skills"
PACK_NAME="social-policy-research"

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

info()  { echo -e "${GREEN}[SPR]${NC} $1"; }
warn()  { echo -e "${YELLOW}[SPR]${NC} $1"; }
error() { echo -e "${RED}[SPR]${NC} $1" >&2; }

# Determine script location (works for both curl|bash and local execution)
if [[ -d "skills" ]]; then
    SOURCE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
else
    # Running via curl — clone to temp dir
    TMPDIR_CLONE="$(mktemp -d)"
    trap 'rm -rf "$TMPDIR_CLONE"' EXIT
    info "Cloning repository..."
    git clone --depth 1 "$REPO_URL" "$TMPDIR_CLONE" 2>/dev/null
    SOURCE_DIR="$TMPDIR_CLONE"
fi

# Ensure skills directory exists
mkdir -p "$SKILLS_DIR"

# List available skills
SKILLS=($(ls -d "$SOURCE_DIR/skills"/*/))
AVAILABLE=()
for skill_path in "${SKILLS[@]}"; do
    skill_name="$(basename "$skill_path")"
    if [[ -f "$skill_path/SKILL.md" ]]; then
        AVAILABLE+=("$skill_name")
    fi
done

if [[ ${#AVAILABLE[@]} -eq 0 ]]; then
    error "No skills found with SKILL.md files."
    exit 1
fi

echo ""
info "Social Policy Research — Skill Pack"
echo "  Available skills: ${#AVAILABLE[@]}"
echo ""

# Show available skills
for i in "${!AVAILABLE[@]}"; do
    skill="${AVAILABLE[$i]}"
    desc=$(head -10 "$SOURCE_DIR/skills/$skill/SKILL.md" | grep "^description:" | sed 's/^description: //')
    printf "  %2d. %-20s %s\n" "$((i+1))" "$skill" "${desc:0:60}"
done

echo ""
echo "  Options:"
echo "    a) Install all skills"
echo "    s) Select specific skills"
echo "    q) Quit"
echo ""
read -rp "  Choose [a/s/q]: " choice

case "$choice" in
    a|A)
        SELECTED=("${AVAILABLE[@]}")
        ;;
    s|S)
        echo ""
        read -rp "  Enter skill numbers (comma-separated, e.g. 1,3,5): " nums
        SELECTED=()
        IFS=',' read -ra NUMS <<< "$nums"
        for num in "${NUMS[@]}"; do
            num=$(echo "$num" | tr -d ' ')
            idx=$((num - 1))
            if [[ $idx -ge 0 && $idx -lt ${#AVAILABLE[@]} ]]; then
                SELECTED+=("${AVAILABLE[$idx]}")
            else
                warn "Skipping invalid number: $num"
            fi
        done
        ;;
    q|Q)
        info "Cancelled."
        exit 0
        ;;
    *)
        error "Invalid choice."
        exit 1
        ;;
esac

if [[ ${#SELECTED[@]} -eq 0 ]]; then
    error "No skills selected."
    exit 1
fi

# Install selected skills
echo ""
INSTALLED=0
for skill in "${SELECTED[@]}"; do
    target="$SKILLS_DIR/$skill"
    source="$SOURCE_DIR/skills/$skill"

    if [[ -d "$target" ]]; then
        warn "$skill — already installed, updating..."
        rm -rf "$target"
    fi

    cp -r "$source" "$target"
    info "$skill — installed"
    INSTALLED=$((INSTALLED + 1))
done

echo ""
info "Done. Installed $INSTALLED skill(s) to $SKILLS_DIR/"
info "Restart Claude Code or start a new conversation to use them."
echo ""
echo "  Usage: type /humanize, /scholia, /deepresearch, etc. in Claude Code"
echo ""
