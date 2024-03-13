import subprocess
import os

# RICORDA DI USARE OPENSSL

RED = "\033[31m"
GREEN = "\033[32m"
YELLOW = "\033[33m"
RESET = "\033[0m"
BLUE = "\033[34m"
MAGENTA = "\033[35m"
CYAN = "\033[36m"
WHITE = "\033[37m"

to_check = './practice'
expected = ['MaRViN_stuff']

def check_ls(cartella, expected):
    try:
        content = set(os.listdir(cartella))
    except OSError as e:
        return False

    expected_set = set(expected)

    if content == expected_set:
        return True
    else:
        return False

def main():
    # cambiare il nome
    new_folder_path = "../DataGrip"

    # cambiare la repo
    url_repository = "https://github.com/giacominho3/DataGrip.git"
    solution = "5596C51"

    expected = ['hotel_california.txt',
                'hysteria.txt',
                'alien_blues.txt', 
                'dumb.txt',
                'king_park.txt',
                'cloud_9.txt',
                'gumshield.txt', 
                'brain_stew.txt',]

    if (check_ls('./media/playlist/Rock', expected) == False):
        print("Ho trovato un errore nelle playlist da te create :(")
        exit()

    expected = ['the_real_slim_shady.txt',
                'fear.txt',
                'many_man.txt', 
                'humble.txt',
                'straight_outta_compton.txt',
                'whats_the_difference.txt',
                'all_eyez_on_me.txt', 
                'big_poppa.txt',]

    if (check_ls('./media/playlist/Rap', expected) == False):
        print("Ho trovato un errore nelle playlist da te create :(")
        exit()

    expected = ['playlist']

    if (check_ls('./media', expected) == False):
        print("Ho trovato un errore nelle playlist da te create :(")
        exit()

    expected = ['Rock', 'Rap']

    if (check_ls('./media/playlist', expected) == False):
        print("Ho trovato un errore nelle playlist da te create :(")
        exit()

    print(GREEN + "\nHINT: " + "Ricorda l'ordine di inserimento dei caratteri della soluzione :)\n" + RESET)
    mysolution = input("Inserisci la soluzione del livello: " + YELLOW)
    print(RESET)

    if (mysolution == solution):

        # comando_clone = ["git", "clone", url_repository, new_folder_path]
        # try:
            # subprocess.run(comando_clone, check=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
            print(GREEN + "Livello completato con successo!" + RESET)
            # print("Troverai il prossimo livello in " + MAGENTA + new_folder_path + RESET)
        # except subprocess.CalledProcessError as e:
            print(RED + "Errore durante il cloning del repository: " + e + RESET)
    else:
        print(RED + "La soluzione che hai dato sembra essere errata, ritenta :(" + RESET)

main()