@echo off
REM REXXIE Project Verification Script (Windows)
REM Run this after npm install to verify setup

echo.
echo 🔍 REXXIE Project Verification
echo ==============================
echo.

setlocal enabledelayedexpansion
set "PASSED=0"
set "FAILED=0"

REM Function to check files
:checkfile
if exist "%~1" (
    echo ✓ Found: %~1
    set /a PASSED+=1
) else (
    echo ✗ Missing: %~1
    set /a FAILED+=1
)
exit /b

echo 📁 Directory Structure
echo ---
if exist "src" (echo ✓ Directory: src & set /a PASSED+=1) else (echo ✗ Missing: src & set /a FAILED+=1)
if exist "src\app" (echo ✓ Directory: src\app & set /a PASSED+=1) else (echo ✗ Missing: src\app & set /a FAILED+=1)
if exist "src\components" (echo ✓ Directory: src\components & set /a PASSED+=1) else (echo ✗ Missing: src\components & set /a FAILED+=1)
if exist "src\components\ui" (echo ✓ Directory: src\components\ui & set /a PASSED+=1) else (echo ✗ Missing: src\components\ui & set /a FAILED+=1)
if exist "src\lib" (echo ✓ Directory: src\lib & set /a PASSED+=1) else (echo ✗ Missing: src\lib & set /a FAILED+=1)
if exist "src\types" (echo ✓ Directory: src\types & set /a PASSED+=1) else (echo ✗ Missing: src\types & set /a FAILED+=1)
echo.

echo 📄 Configuration Files
echo ---
if exist "package.json" (echo ✓ Found: package.json & set /a PASSED+=1) else (echo ✗ Missing: package.json & set /a FAILED+=1)
if exist "tsconfig.json" (echo ✓ Found: tsconfig.json & set /a PASSED+=1) else (echo ✗ Missing: tsconfig.json & set /a FAILED+=1)
if exist "tailwind.config.ts" (echo ✓ Found: tailwind.config.ts & set /a PASSED+=1) else (echo ✗ Missing: tailwind.config.ts & set /a FAILED+=1)
if exist "next.config.js" (echo ✓ Found: next.config.js & set /a PASSED+=1) else (echo ✗ Missing: next.config.js & set /a FAILED+=1)
if exist "postcss.config.js" (echo ✓ Found: postcss.config.js & set /a PASSED+=1) else (echo ✗ Missing: postcss.config.js & set /a FAILED+=1)
echo.

echo 📚 Documentation
echo ---
if exist "README.md" (echo ✓ Found: README.md & set /a PASSED+=1) else (echo ✗ Missing: README.md & set /a FAILED+=1)
if exist "QUICK_START.md" (echo ✓ Found: QUICK_START.md & set /a PASSED+=1) else (echo ✗ Missing: QUICK_START.md & set /a FAILED+=1)
if exist "DESIGN_SYSTEM.md" (echo ✓ Found: DESIGN_SYSTEM.md & set /a PASSED+=1) else (echo ✗ Missing: DESIGN_SYSTEM.md & set /a FAILED+=1)
if exist "ROADMAP.md" (echo ✓ Found: ROADMAP.md & set /a PASSED+=1) else (echo ✗ Missing: ROADMAP.md & set /a FAILED+=1)
echo.

echo 🔧 Source Files
echo ---
if exist "src\app\layout.tsx" (echo ✓ Found: src\app\layout.tsx & set /a PASSED+=1) else (echo ✗ Missing: src\app\layout.tsx & set /a FAILED+=1)
if exist "src\app\page.tsx" (echo ✓ Found: src\app\page.tsx & set /a PASSED+=1) else (echo ✗ Missing: src\app\page.tsx & set /a FAILED+=1)
if exist "src\app\globals.css" (echo ✓ Found: src\app\globals.css & set /a PASSED+=1) else (echo ✗ Missing: src\app\globals.css & set /a FAILED+=1)
if exist "src\components\ui\Button.tsx" (echo ✓ Found: src\components\ui\Button.tsx & set /a PASSED+=1) else (echo ✗ Missing: src\components\ui\Button.tsx & set /a FAILED+=1)
echo.

echo ==============================
echo Results:
echo ✓ Passed: %PASSED%
echo ✗ Failed: %FAILED%
echo.

if %FAILED% equ 0 (
    echo 🎉 All checks passed!
    echo.
    echo Next steps:
    echo   1. npm install
    echo   2. npm run dev
    echo   3. Open http://localhost:3000
    echo.
) else (
    echo ⚠️  Some checks failed.
    echo.
    echo Troubleshooting:
    echo   1. Verify project path is correct
    echo   2. Run: npm install
    echo   3. Check file permissions
    echo.
)

pause
