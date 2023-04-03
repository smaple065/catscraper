#! 

#Visit PAWS.org and parse elements for adoptable cats
#Save adoptable cats to current_cats.txt
hxnormalize -x https://paws.org/adopt/cats |
awk '/card-block__title/' >  current_cats.txt

sed -i -e 's|</b>|-|g' -e 's|<[^>]*>||g' current_cats.txt

#Compare set of cats with previous set of cats
grep -Fxv -f previous_cats.txt current_cats.txt > new_cats.txt

#If there are new cats, email user with their names and a link to the listing
if [ -s new_cats.txt  ]
then 	
	echo https://paws.org/adopt/cats >> new_cats.txt
	mail -s "CAT WATCH" johndoe@domain.com < new_cats.txt
fi

#Save the current set of cats to be used as the old set next time
cp current_cats.txt previous_cats.txt
rm current_cats.txt
