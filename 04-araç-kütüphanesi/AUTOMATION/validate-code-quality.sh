#!/bin/bash
# CODE QUALITY VALIDATOR v1.0
# Comprehensive checks for AI-generated code

set -euo pipefail

echo "🔍 PAISE CODE QUALITY VALIDATOR v1.0"

CHECKS_PASSED=0
CHECKS_FAILED=0

check_python_files() {
    echo ""
    echo "🐍 Checking Python files..."
    
    # Find all Python files
    find . -name "*.py" -not -path "./venv/*" -not -path "./.venv/*" | while read -r pyfile; do
        echo "  Checking: $pyfile"
        
        # Check for type hints
        if ! grep -q "def " "$pyfile" || grep "def " "$pyfile" | grep -q ":\|->" ; then
            echo "    ✓ Type hints present"
            ((CHECKS_PASSED++))
        else
            echo "    ⚠ Missing type hints"
            ((CHECKS_FAILED++))
        fi
        
        # Check for docstrings
        if grep -q '"""' "$pyfile"; then
            echo "    ✓ Docstrings present"
            ((CHECKS_PASSED++))
        else
            echo "    ⚠ Missing docstrings"
            ((CHECKS_FAILED++))
        fi
        
        # Check for error handling
        if grep -q "except" "$pyfile"; then
            echo "    ✓ Error handling present"
            ((CHECKS_PASSED++))
        else
            echo "    ⚠ No error handling found"
            ((CHECKS_FAILED++))
        fi
    done
}

check_security() {
    echo ""
    echo "🔐 Security checks..."
    
    # Check for hardcoded secrets
    if grep -r "password\|api_key\|secret" . --include="*.py" --include="*.js" 2>/dev/null | grep -v "#" | grep -v '"\"\"' > /dev/null; then
        echo "    ⚠ Potential hardcoded secrets found"
        ((CHECKS_FAILED++))
    else
        echo "    ✓ No obvious hardcoded secrets"
        ((CHECKS_PASSED++))
    fi
    
    # Check for input validation
    if grep -r "input\|request\|parse" . --include="*.py" 2>/dev/null | grep -i "valid\|check\|assert" > /dev/null; then
        echo "    ✓ Input validation patterns found"
        ((CHECKS_PASSED++))
    else
        echo "    ⚠ Limited input validation found"
        ((CHECKS_FAILED++))
    fi
}

check_documentation() {
    echo ""
    echo "📚 Documentation checks..."
    
    if [ -f "README.md" ]; then
        echo "    ✓ README.md exists"
        ((CHECKS_PASSED++))
    else
        echo "    ⚠ Missing README.md"
        ((CHECKS_FAILED++))
    fi
    
    if [ -f "ARCHITECTURE.md" ]; then
        echo "    ✓ ARCHITECTURE.md exists"
        ((CHECKS_PASSED++))
    else
        echo "    ⚠ Missing ARCHITECTURE.md"
        ((CHECKS_FAILED++))
    fi
}

check_testing() {
    echo ""
    echo "🧪 Testing infrastructure checks..."
    
    if [ -d "tests" ] || [ -d "test" ]; then
        echo "    ✓ Test directory exists"
        ((CHECKS_PASSED++))
    else
        echo "    ⚠ No test directory found"
        ((CHECKS_FAILED++))
    fi
    
    if [ -f "pytest.ini" ] || [ -f "setup.cfg" ]; then
        echo "    ✓ Test configuration found"
        ((CHECKS_PASSED++))
    else
        echo "    ⚠ No test configuration found"
        ((CHECKS_FAILED++))
    fi
}

check_python_files
check_security
check_documentation
check_testing

echo ""
echo "═══════════════════════════════════════"
echo "📊 VALIDATION SUMMARY"
echo "✓ Checks Passed: $CHECKS_PASSED"
echo "⚠ Checks Failed: $CHECKS_FAILED"
echo "═══════════════════════════════════════"

if [ $CHECKS_FAILED -gt 5 ]; then
    echo "❌ Quality threshold not met. Please address warnings."
    exit 1
else
    echo "✅ Code quality acceptable. Ready for deployment."
    exit 0
fi
