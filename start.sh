if [ -z $UPSTREAM_REPO ] 
then 
  echo "Cloning main Repository" 
  git clone https://github.com/batmanhyd/TheMovieProviderBot.git 
else 
  echo "Cloning Custom Repo from $UPSTREAM_REPO " 
  git clone $UPSTREAM_REPO /TheMovieProviderBot
fi 
cd /DQ-The-File-Donor 
pip3 install -U -r requirements.txt 
echo "Starting DQ-The-File-Donor...." 
python3 bot.py
