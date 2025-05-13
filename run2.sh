rm -rf .venv
uv venv --python 3.8.20 #Using system uv
source .venv/bin/activate &&
echo "Python version in venv: $(python --version 2>&1)." &&
python -m ensurepip --default-pip
pip install -r requirements.txt &&
python bug.py
