(
@REM The parenthesis form a "block" which is loaded into memory so we can deal with deleting while running easier

@REM Create Text Files
echo off
echo *cache* > .gitignore
echo .local_gitignore > .local_gitignore
echo .vscode >> .local_gitignore
echo Hello World > README.md
mkdir .vscode
echo {^"code-runner.runInTerminal^": true} > ./.vscode/settings.json

@REM Setup git
git init
git config core.excludesFile ./.local_gitignore

@REM Setup Python
poetry init -n
poetry add pylint black mypy --dev
poetry run pylint --generate-rcfile > .pylintrc

@REM Delete this script
del init.bat

@REM Pause for effect
pause
)
