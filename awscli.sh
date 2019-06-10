
sudo apt-get install python3-distutils -y

curl -O https://bootstrap.pypa.io/get-pip.py
python3 get-pip.py --user
rm -f get-pip.py

if [ -x "$(command -v pip3)" ]; then 
  pip3 install awscli --upgrade --user
else
  pip install awscli --upgrade --user
fi

echo "Finished with awscli"

