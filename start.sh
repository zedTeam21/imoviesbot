if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Techwrdd/cinemicabot.git /cinemicabot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /cinemicabot
fi
cd /cinemicabot
pip3 install -U -r requirements.txt
echo "Starting Bot....💥"
python3 bot.py
