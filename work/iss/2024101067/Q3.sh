player1choice=$(shuf -e s g -n 1)
player2choice=$(shuf -e s g -n 1)
# player 1,2 is provided with a random s,g
# s for stop, g for go

echo "player 1 choice: $player1choice"
echo "player 2 choice: $player2choice"

if [[ ("$player1choice" = "s" && "$player2choice" = "g")]]; then
    echo "nash equilibrium"
    echo "player 2 wins"
    # (s,g),(g,s) are nash equilibrium.
elif [[ ("$player1choice" = "g" && "$player2choice" = "s")]]; then
    echo "nash equilibrium"
    echo "player 1 wins"
elif [[ ("$player1choice" = "s" && "$player2choice" = "s")]]; then
    echo "not nash equilibrium"
    echo "no one wins"
    # remaining are not nash equilibrium.
elif [[ ("$player1choice" = "g" && "$player2choice" = "g")]]; then
    echo "not nash equilibrium"
    echo "accident"
fi