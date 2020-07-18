all: README.md 

README.md: guessinggame.sh
	echo "**Title of The Project**:Guessing Game">README.md
	echo "**Make Date**:">>README.md
	date>>README.md
	echo>>"Project Created By Karunya Challa " 	
echo "**Number of Lines:**">>README.md
	grep -c ^ guessinggame.sh>>README.md

clean:
	rm README.md
