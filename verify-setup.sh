#!/bin/bash

# REXXIE Project Verification Script
# Run this after npm install to verify setup

echo "🔍 REXXIE Project Verification"
echo "=============================="
echo ""

# Color codes
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Check counters
PASSED=0
FAILED=0

# Helper functions
check_file() {
  if [ -f "$1" ]; then
    echo -e "${GREEN}✓${NC} Found: $1"
    ((PASSED++))
  else
    echo -e "${RED}✗${NC} Missing: $1"
    ((FAILED++))
  fi
}

check_dir() {
  if [ -d "$1" ]; then
    echo -e "${GREEN}✓${NC} Directory: $1"
    ((PASSED++))
  else
    echo -e "${RED}✗${NC} Missing directory: $1"
    ((FAILED++))
  fi
}

check_command() {
  if command -v "$1" &> /dev/null; then
    echo -e "${GREEN}✓${NC} Found: $1"
    ((PASSED++))
  else
    echo -e "${RED}✗${NC} Missing: $1 (Run: npm install)"
    ((FAILED++))
  fi
}

echo "📁 Directory Structure"
echo "---"
check_dir "src"
check_dir "src/app"
check_dir "src/components"
check_dir "src/components/ui"
check_dir "src/lib"
check_dir "src/types"
check_dir "public"
echo ""

echo "📄 Configuration Files"
echo "---"
check_file "package.json"
check_file "tsconfig.json"
check_file "tailwind.config.ts"
check_file "next.config.js"
check_file "postcss.config.js"
check_file ".eslintrc.json"
check_file ".prettierrc"
echo ""

echo "📚 Documentation"
echo "---"
check_file "README.md"
check_file "QUICK_START.md"
check_file "DESIGN_SYSTEM.md"
check_file "ROADMAP.md"
check_file "INDEX.md"
check_file "WORKSPACE_SUMMARY.md"
check_file "PHASE_0_CHECKLIST.md"
check_file "DEPLOYMENT_CHECKLIST.md"
echo ""

echo "🔧 Source Files"
echo "---"
check_file "src/app/layout.tsx"
check_file "src/app/page.tsx"
check_file "src/app/globals.css"
check_file "src/components/ui/Button.tsx"
check_file "src/components/ui/Card.tsx"
check_file "src/components/ui/index.ts"
check_file "src/lib/utils.ts"
check_file "src/types/index.ts"
echo ""

echo "📦 Dependencies"
echo "---"
check_command "npm"
check_command "node"
echo ""

# Summary
echo "=============================="
echo "Results:"
echo -e "${GREEN}✓ Passed: $PASSED${NC}"
echo -e "${RED}✗ Failed: $FAILED${NC}"
echo ""

if [ $FAILED -eq 0 ]; then
  echo -e "${GREEN}🎉 All checks passed!${NC}"
  echo ""
  echo "Next steps:"
  echo "  1. npm install          (if not done)"
  echo "  2. npm run dev          (start dev server)"
  echo "  3. Open http://localhost:3000"
  echo ""
  exit 0
else
  echo -e "${YELLOW}⚠️  Some checks failed.${NC}"
  echo ""
  echo "Troubleshooting:"
  echo "  1. Verify project path is correct"
  echo "  2. Run: npm install"
  echo "  3. Check file permissions"
  echo ""
  exit 1
fi
