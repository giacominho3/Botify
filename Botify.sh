#!/bin/bash
clear

if [ $# -ge 0 ] && [ $# -le 1 ]; then
    case "$1" in
        "")
            str="[???]: ..."

            for i in {1..3}; do
                while IFS= read -r -n1 var
                do
                    printf '%s' "$var"
                    sleep 0.03
                done <<< "$str"
                sleep 0.5
                echo
            done

            str="[???]: Hey, scusa se non ti ho sentito arrivare, avevo il volume troppo alto... "

            while IFS= read -r -n1 var
            do
                printf '%s' "$var"
                sleep 0.03
            done <<< "$str"

            sleep 0.2

            str="Sono Botify, piacere! Sei qui per il test, giusto?"

            while IFS= read -r -n1 var
            do
                printf '%s' "$var"
                sleep 0.03
            done <<< "$str"

            echo
            sleep 0.5
            echo

            str="[Botify]: Che domanda stupida... Che altra motivazione avrebbe una creatura come te per essere qui? Hahahaha ;)"

            while IFS= read -r -n1 var
            do
                printf '%s' "$var"
                sleep 0.015
            done <<< "$str"

            echo
            sleep 0.03
            echo

            str="[Botify]: Come avrai intuito dal mio nome, sono incaricato di gestire le playlist del nostro creatore."

            while IFS= read -r -n1 var
            do
                printf '%s' "$var"
                sleep 0.015
            done <<< "$str"

            echo
            sleep 0.03
            echo

            str="[Botify]: Per valutare le tue abilità, ti affiderò uno dei compiti più semplici che svolgo quotidianamente: l'ordinamento delle canzoni nelle playlist."

            while IFS= read -r -n1 var
            do
                printf '%s' "$var"
                sleep 0.015
            done <<< "$str"

            echo
            sleep 0.03
            echo

            str="[Botify]: Ti ho lasciato una cartella chiamata \"media\" con all'interno alcuni file. Ti chiedo di creare una playlist \"Rock\" e una playlist \"Rap\". Le due cartelle delle playlist devono essere chiamate ESATTAMENTE in questo modo."

            while IFS= read -r -n1 var
            do
                printf '%s' "$var"
                sleep 0.015
            done <<< "$str"

            echo
            sleep 0.03
            echo

            str="[Botify]: Nel caso in cui non conoscessi i generi delle canzoni che ho selezionato per te (il che sarebbe veramente deludente), puoi consultarmi in qualsiasi momento per ottenere una lista delle canzoni con il relativo genere! :D"

            while IFS= read -r -n1 var
            do
                printf '%s' "$var"
                sleep 0.015
            done <<< "$str"

            echo
            sleep 0.03
            echo

            str="[Botify]: Per visualizzare la lista delle canzoni per genere, usa \"sh Botify.sh genere\""

            while IFS= read -r -n1 var
            do
                printf '%s' "$var"
                sleep 0.015
            done <<< "$str"

            echo
            sleep 0.03
            echo

            str="[Botify]: Solo per essere chiari... le playlist che creerai devono essere inserite nella cartella \"playlists\"."

            while IFS= read -r -n1 var
            do
                printf '%s' "$var"
                sleep 0.015
            done <<< "$str"

            echo
            sleep 0.03
            echo

            str="[Botify]: Prima di lasciarti voglio darti un ultimo consiglio... Dai un'occhiata ai testi delle canzoni."

            while IFS= read -r -n1 var
            do
                printf '%s' "$var"
                sleep 0.015
            done <<< "$str"

            echo
        ;;
        "genere")
            str="[Botify]: Sono molto deluso..."

            while IFS= read -r -n1 var
            do
                printf '%s' "$var"
                sleep 0.015
            done <<< "$str"
            sleep 0.5

            echo
            sleep 0.03
            echo

            str="[Botify]: Eccoti la lista :/"
            while IFS= read -r -n1 var
            do
                printf '%s' "$var"
                sleep 0.015
            done <<< "$str"

            sleep 0.5

            echo
            sleep 0.03
            echo

            echo "- Hotel California - Eagles | Rock"
            echo "- Hysteria - Muse | Rock"
            echo "- Alien Blues - Vundabar | Rock"
            echo "- Dumb - Nirvana | Rock"
            echo "- King Park - La Dispute | Rock"
            echo "- Cloud 9 - Emarosa | Rock"
            echo "- Gumshield - Don Broco | Rock"
            echo "- Brain Stew - Green Day | Rock"
            echo "- The Real Slim Shady - Eminem | Rap"
            echo "- Fear - Logic | Rap"
            echo "- Many Man - 50 Cent | Rap"
            echo "- Humble - Kendrick Lamar | Rap"
            echo "- Big Poppa - The Notorious B.I.G | Rap"
            echo "- Straight Outta Compton - N.W.A. | Rap"
            echo "- What's The difference - Dr.Dre | Rap"
            echo "- All Eyez On Me - 2Pac | Rap" k
        ;;
        *)
            echo
            echo "Errore: argomento non valido."
            echo "Puoi chiamare Botify solamente con: \"sh Botify.sh\" o \"sh Botify.sh genere\""
            echo
            exit 1
        ;;
    esac
else
    echo
    echo "Errore: numero di argomenti non valido."
    echo "Puoi chiamare Botify solamente con: \"sh Botify.sh\" o \"sh Botify.sh genere\""
    echo
    exit 1
fi
