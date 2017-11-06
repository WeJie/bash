#! /bin/bash

FRUIT=(apple banana orange tangerine)

case "${FRUIT[$(( $RANDOM % ${#FRUIT[@]} ))]}" in 
  (apple)
    echo 'Mmmh... I like apple!'
    ;;
  (banana)
    echo 'Hm, a bit awry, no?'
    ;;
  (orange | tangerine)
    echo "I don't like it!"
    ;;
  (*)
    echo "Unknow fruit - sure it isn't toxic?"
    ;;
esac

case $1 in
  (jpeg | jpg)
    echo 'It is jpeg.'
    ;;
  (png) echo 'It is png.'
    ;;
  (gif) echo 'It is gif.'
    ;;
  (*) echo "$1 is not an image!"
    ;;
esac

