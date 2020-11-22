#!/usr/bin/env bash
game_up=true
items=20
my_pick=0
i=0
echo "        ██╗    ██╗███████╗██╗      ██████╗ ██████╗ ███╗   ███╗███████╗"
echo "        ██║    ██║██╔════╝██║     ██╔════╝██╔═══██╗████╗ ████║██╔════╝"
echo "        ██║ █╗ ██║█████╗  ██║     ██║     ██║   ██║██╔████╔██║█████╗  "
echo "        ██║███╗██║██╔══╝  ██║     ██║     ██║   ██║██║╚██╔╝██║██╔══╝  "
echo "        ╚███╔███╔╝███████╗███████╗╚██████╗╚██████╔╝██║ ╚═╝ ██║███████╗"
echo "         ╚══╝╚══╝ ╚══════╝╚══════╝ ╚═════╝ ╚═════╝ ╚═╝     ╚═╝╚══════╝"
echo "                                                                      "
echo "                            ████████╗ ██████╗                         "
echo "                            ╚══██╔══╝██╔═══██╗                        "
echo "                               ██║   ██║   ██║                        "
echo "                               ██║   ██║   ██║                        "
echo "                               ██║   ╚██████╔╝                        "
echo "                               ╚═╝    ╚═════╝                         "
echo "                                                                      "
echo "                          ███╗   ██╗██╗███╗   ███╗                    "
echo "                          ████╗  ██║██║████╗ ████║                    "
echo "                          ██╔██╗ ██║██║██╔████╔██║                    "
echo "                          ██║╚██╗██║██║██║╚██╔╝██║                    "
echo "                          ██║ ╚████║██║██║ ╚═╝ ██║                    "
echo "                          ╚═╝  ╚═══╝╚═╝╚═╝     ╚═╝                    "
echo "╔════════════════════════════════════════════════════════════════════════════╗"
echo "║                      Il y a 20 bâtons sur la table.                        ║"
echo "║          Chaque joueur, à tour de rôle, prend entre 1 et 3 bâtons.         ║"
echo "║      Le joueur qui prend le dernier bâton gagne la partie, good luck !     ║"
echo "╚════════════════════════════════════════════════════════════════════════════╝"
while [ "$game_up" = true ]
do
  while [ $items -gt 4 ]
  do
    if [ $items -eq 20 ]
    then
      echo "Debut de la partie, il y a 20 bâtons sur la table :"
    else
      echo "il reste $items baton(s) : "
    fi
    i=0
    while [ $i -lt $items ]
    do
      echo -n " ║ "
      let "i = i+1"
    done
    echo ""
    echo "C'est votre tour, combien prenez vous de bâton?"
    read input_pick
    if [ $input_pick = 1 ]
    then
      my_pick=3
    elif [ $input_pick = 2 ]
    then
      my_pick=2
    elif [ $input_pick = 3 ]
    then
      my_pick=1
    else
      input_pick=0
      my_pick=0
    fi
    let "items=items - input_pick"
    if [ $input_pick -eq 0 ]
    then
      echo "Vous ne pouvez prendre qu'entre 1 et 3 bâtons, réessayer"
    else
      i=0
      while [ $i -lt $items ]
      do
        echo -n " ║ "
        let "i = i+1"
      done
      echo ""
      echo "ok...je prend $my_pick Batons !"
    fi
    let "items=items - my_pick"
  done
  echo "il reste $items batons : "
  i=0
  while [ $i -lt $items ]
  do
    echo -n " ║ "
    let "i = i+1"
  done
  echo ""
  echo "C'est votre tour, combien prenez vous de bâton?"
  read input_pick
  if [ $input_pick = 1 ]
  then
    my_pick=3
  elif [ $input_pick = 2 ]
  then
    my_pick=2
  elif [ $input_pick = 3 ]
  then
    my_pick=1
  else
    input_pick=0
    my_pick=0
  fi
  let "items=items - input_pick"
  if [ $input_pick -eq 0 ]
  then
    echo "Vous ne pouvez prendre qu'entre 1 et 3 bâtons, réessayer"
  else
    i=0
    while [ $i -lt $items ]
    do
      echo -n " ║ "
      let "i = i+1"
    done
    echo ""
    echo "ok...je prend $my_pick Batons !"
  fi
  let "items=items - my_pick"
  if [ $items -eq 0 ]
  then
    echo "Il n y a plus de bâton sur la table, dommage."
    echo "▄██   ▄    ▄██████▄  ███    █▄        ▄█        ▄██████▄     ▄████████    ▄████████"
    echo "███   ██▄ ███    ███ ███    ███      ███       ███    ███   ███    ███   ███    ███"
    echo "███▄▄▄███ ███    ███ ███    ███      ███       ███    ███   ███    █▀    ███    █▀ "
    echo "▀▀▀▀▀▀███ ███    ███ ███    ███      ███       ███    ███   ███         ▄███▄▄▄    "
    echo "▄██   ███ ███    ███ ███    ███      ███       ███    ███ ▀███████████ ▀▀███▀▀▀    "
    echo "███   ███ ███    ███ ███    ███      ███       ███    ███          ███   ███    █▄ "
    echo "███   ███ ███    ███ ███    ███      ███▌    ▄ ███    ███    ▄█    ███   ███    ███"
    echo " ▀█████▀   ▀██████▀  ████████▀       █████▄▄██  ▀██████▀   ▄████████▀    ██████████"
    echo "                                     ▀                                             "
    game_up=falses
  fi
done
