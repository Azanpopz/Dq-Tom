if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/azanhelpdesk/Dq--auto-Tom.git /Dq--auto-Tom
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Dq--auto-Tom
fi
cd /DQ-The-File-Donor
pip3 install -U -r requirements.txt
echo "Starting Dq--auto-Tom...."
python3 bot.py
