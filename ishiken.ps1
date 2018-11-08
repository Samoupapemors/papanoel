clear
function Rules {


    echo "    #         ######      #          #         #    #          #     #"        
    
    echo "########              ########   ######## ########## ##########   #"        
    
    echo "#    #    ##########  #       #  #    #      #    #         ##   ##########" 
    
    echo "#    #          #     #      ##  #    #            #       ## #     #     #"  
    
    echo "    #           #          ##        #            #      ##   #     #"        
    
    echo "   #           #         ##         #            #     ##    ##     #"        
    
    echo "  #          ##        ##          #           #              #      ######"

                            echo "                          +~~~~~~~~~~~~~+ "
                            echo "                             1 : gû "
                            echo "                             2 : choki "
                            echo "                             3 : pâ "
                            echo "                          +~~~~~~~~~~~~~+ "
}

[Int] $userscore = 0

[Int] $computerscore = 0


Function Jeux {


 

    While ($true) {

    Rules

    [int] $user = Read-Host " Quel es votre choix"
    [int] $computer = Get-Random -Minimum 1 -Maximum 3

    switch ($user) {

            1 { $choixuser = "Gû"  }

            2 { $choixuser = "Choki" }

            3 { $choixuser = "Pâ" }

}

    switch ($computer) {

            1 { $choixcomputer = "Gû"  }

            2 { $choixcomputer = "Choki" }

            3 { $choixcomputer = "Pâ" }

}

if (($choixuser -eq "Gû") -and ($choixcomputer -eq "Gû")) {

            $resultat = "Égalité"

        }

        if (($choixuser -eq "Pâ") -and ($choixcomputer -eq "Gû")) {

            $resultat = "Gagné"

            $userscore++

        }

        if (($choixuser -eq "Choki") -and ($choixcomputer -eq "Gû")) {

            $resultat = "Perdu"

            $computerscore++

        }

        if (($choixuser -eq "Gû") -and ($choixcomputer -eq "Pâ")) {

            $resultat = "Perdu"

            $computerscore++

        }

        if (($choixuser -eq "Pâ") -and ($choixcomputer -eq "Pâ")) {

            $resultat = "Égalité"

        }

        if (($choixuser -eq "Choki") -and ($choixcomputer -eq "Pâ")) {

            $resultat = "Gagné"

            $userscore++

        }

        if (($choixuser -eq "Gû") -and ($choixcomputer -eq "Choki")) {

            $resultat = "Gagné"

            $userscore++

        }

        if (($choixuser -eq "Pâ") -and ($choixcomputer -eq "Choki")) {

            $resultat = "Perdu"

            $computerscore++

        }

        if (($choixuser -eq "Choki") -and ($choixcomputer -eq "Choki")) {

            $resultat = "Égalité"

        }


    
    
        clear

        echo "user: $choixuser"

        sleep 1

        echo "computer: $choixcomputer"

        sleep 1

        echo "Résultat: $resultat"

        sleep 2

        clear

        echo "user score: $userscore"

        sleep 1

        echo "computer score: $computerscore"

        sleep 1

        clear    






}










}
Jeux