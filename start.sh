if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/iwhiwh/Street-filler-Bot /Street-filler-Bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Street-filler-Bot
fi
cd /Auto-search-tamil-bot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
