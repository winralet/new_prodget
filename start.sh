cd
export PORT 5000
unset PIP_USER

if [! - d "venv"]; then
  echo ""
  python3 -m venv --system-site-packages
fi

source venv/bin/activate

if [-f "requirements.txt"]; then
  echo ""
  pip install -r requirements.txt || echo "Errors"
fi

echo "Starting application"

python main.py
