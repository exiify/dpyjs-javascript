//DISCORD AND DOTENV ISNT INSTALLED
install()
{
echo "Installing Discord.js..."
npm install discord.js --save
echo "Installing DotEnv"
npm install dotenv --save

  sleep 3
  exit 1
}

timeout()
{
echo "uhh. Our System Has Been Timeout"

  sleep 3
  exit 1
}

echo "Want Install a npm module before running?"
read -t 25 -p "Please answer with y/n: " installing || timeout

case $installing in

  y|Y)
    install
    ;;

  n|N)
    echo  "Exiting"
    sleep 3
    exit 1
    ;;
    
  *)
    echo "Invalid Option"
    sleep 3
    exit 1
    ;;
    

esac
