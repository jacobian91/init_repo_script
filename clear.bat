@REM For cleaning out what was done by the init.bat for testing purposes
poetry env remove python
del .gitignore
del .local_gitignore
del .pylintrc
del poetry.lock
del pyproject.toml
rd /s /q .vscode
