if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/iwhiwh/Street-filler-Bot /Street-filler-Bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Auto-search-tamil-bot
fi
cd /Street-filler-Bot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
