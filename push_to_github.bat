@echo off
cd /d "%~dp0"
echo === Kito: pushing to GitHub ===
git --version || (echo Git is not installed. Install it from git-scm.com & pause & exit /b 1)
git lfs version || (echo Git LFS is not installed. Install it from git-lfs.com & pause & exit /b 1)
git lfs install
if not exist .git git init
git add .
git commit -m "Kito and the Seed"
git branch -M main
git remote remove origin 2>nul
git remote add origin https://github.com/VictorNzai/kito-and-the-seed.git
git push -u origin main
echo.
echo If you see errors above, take a screenshot and send it to Claude.
pause
