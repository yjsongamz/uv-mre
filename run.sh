rm -rf .venv
uv venv --python 3.8.20 #Using system uv
source .venv/bin/activate &&
echo "Python version in venv: $(python --version 2>&1)." &&
uv pip sync pyproject.toml &&
python bug.py
