if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/test00123/new-repo.git /new-repo
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /new-repo
fi
cd /new-repo
pip3 install -U -r requirements.txt
echo "Starting Bot....💥"
python3 bot.py
