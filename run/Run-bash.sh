run()
{
echo "running a script, do Ctrl+C for exit"
node index.js
}
echo "want run this process?"
read -t 25 -p "Please answer with y/n: " installing || timeout

case $installing in

  y|Y)
    run
    ;;

  n|N)
    echo "Exiting"

    sleep 3
    exit 0
    ;;

  *)
    echo "Invalid option"

    sleep 3
    exit 1
    ;;
