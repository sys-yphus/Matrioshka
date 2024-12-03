#Creación de la carpeta Matrioshka
New-Item -Path . -Name "Matrioshka1" -ItemType "directory"

#Crea carpetas y las mueve dentro de la anterior carpeta creada

New-Item -ItemType "directory" -Name "Matrioshka2" -Path .
Move-Item -Path Matrioshka2 -Destination Matrioshka1

New-Item -ItemType "directory" -Name "Matrioshka3" -Path .
Move-Item -Path Matrioshka3 -Destination Matrioshka1\Matrioshka2

New-Item -ItemType "directory" -Name "Matrioshka4" -Path .
Move-Item -Path Matrioshka4 -Destination Matrioshka1\Matrioshka2\Matrioshka3

New-Item -ItemType "directory" -Name "Matrioshka5" -Path .
Move-Item -Path Matrioshka5 -Destination Matrioshka1\Matrioshka2\Matrioshka3\Matrioshka4

#Cambia el nombre de todas las carpetas para que tengan el mismo nombre

Rename-Item -Path "Matrioshka1" -NewName "Matrioshka"
Rename-Item -Path "Matrioshka\Matrioshka2" -NewName "Matrioshka"
Rename-Item -Path "Matrioshka\Matrioshka\Matrioshka3" -NewName "Matrioshka"
Rename-Item -Path "Matrioshka\Matrioshka\Matrioshka\Matrioshka4" -NewName "Matrioshka"
Rename-Item -Path "Matrioshka\Matrioshka\Matrioshka\Matrioshka\Matrioshka5" -NewName "Matrioshka"
