Αυτοματοποιημένη δημιουργία περιβάλλοντος εργασίας:
1.) Install vagrant 
2.) Install virtualbox
3.) επέλεξε ένα directory (λογω προβλήματος του vagrant όλο το path μόνο αγγλικοί χαρακτήρες)
4.) εκτέλεσε:
	vagrant box add hashicorp/precise32
	vagrant plugin install vagrant-vbguest
	vagrant up (υπομονή)
	vagrant ssh (ανάλογα τον ssh client Θα επιτύχει. Στα windows με putty, χρησιμοποίησε το 
		     puttygen για να δημιουργήσεις το κλειδί από αυτό που δίνει και ρύθμισε το putty)
5.) έχει γίνει forward to 80 -> 8080 δοκίμασε το site με http://localhost:8080/diplomatiki
