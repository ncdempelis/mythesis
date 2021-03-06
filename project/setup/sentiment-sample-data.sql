-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Φιλοξενητής: localhost
-- Χρόνος δημιουργίας: 14 Αυγ 2014 στις 21:40:05
-- Έκδοση Διακομιστή: 5.5.38
-- Έκδοση PHP: 5.3.10-1ubuntu3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Βάση: `sentiment`
--

--
-- Άδειασμα δεδομένων του πίνακα `adjectives`
--

INSERT INTO `adjectives` (`code`, `adjective`, `definition`) VALUES
('1', 'καλός', 'που έχει συναισθήματα φιλίας και αγάπης για το συνάνθρωπό του και που βοηθάει και υποστηρίζει όλους όσοι έχουν ανάγκη, που έχει καλοσύνη'),
('1_100', 'αβοήθητος ', 'που δεν τον βοήθησε, δεν τον υποστήριξε κανένας'),
('1_101', 'αβόλευτος ', 'που δεν τον έχουν βολέψει (κάπου). ANT βολεμένος'),
('1_103_0', 'άβολος ', 'ANT βολικός.'),
('1_103_1', 'άβολος ', '(για πργ.) που δεν έχει ή δεν παρέχει βολή'),
('1_110', 'άβουλος ', 'χωρίς βούληση, αποφασιστικότητα και πρωτοβουλία· διστακτικός, αναποφάσιστος'),
('1_118', 'αβράβευτος ', 'που δεν τον έχουν βραβεύσει, τιμήσει με βραβείο. ANT βραβευμένος'),
('1_128_0', 'αβρός ', 'απαλός, τρυφερός, λεπτοκαμωμένος'),
('1_128_1', 'αβρός ', 'που έχει ευγενικούς και λεπτούς τρόπους'),
('1_134', 'αβύθιστος ', 'που δεν έχει βυθιστεί, δεν έχει βουλιάξει ή που από τη φύση του δε βουλιάζει· αβούλιαχτος'),
('1_137_0', 'αβυσσαλέος ', 'βαθύς σαν την άβυσσο· απύθμενος'),
('1_137_1', 'αβυσσαλέος ', '(μτφ.) πολύ μεγάλο, αγεφύρωτο'),
('1_137_2', 'αβυσσαλέος ', 'ανεξερεύνητος, ανεξιχνίαστος'),
('1_137_4', 'αβυσσαλέος ', 'καταχθόνιος, ραδιούργος'),
('1_142', 'αγαθιάρης ', 'αφελής, απονήρευτος μέχρι βλακείας· αγαθός·.'),
('1_1458', 'α καπέλα', '(μουσ.) για χορωδιακό έργο που εκτελείται χωρίς συνοδεία οργάνων'),
('1_148', 'αγαθόπιστος ', 'ευκολόπιστος, αφελής'),
('1_151_0', 'αγαθός ', 'πράος, ενάρετος, καλός, καλοκάγαθος. ANT κακός, πονηρός'),
('1_151_1', 'αγαθός ', 'αφελής, απονήρευτος, ευκολόπιστος· αγαθιάρης'),
('1_157', 'αγαλήνευτος ', 'που δεν έχει γαληνέψει, ηρεμήσει. ANT γαληνεμένος'),
('1_167', 'αγαλματένιος ', 'που μοιάζει με άγαλμα στην ομορφιά ή στη στάση, πάρα πολύ ωραίος'),
('1_172', 'αγάμητος ', '(προφ.) που δεν έχει έρθει σε σεξουαλική επαφή.'),
('1_174', 'άγαμος ', '(λόγ.) που δεν έχει παντρευτεί· ανύπαντρος, ελεύθερος. ANT έγγαμος'),
('1_176', 'αγανακτισμένος ', 'που έχει αγανακτήσει, που έχει δυσανασχετήσει'),
('1_18_0', 'αβαθής ', 'που δεν έχει βάθος, άβαθος, ρηχός. ANT βαθύς'),
('1_184', 'αγάνωτος ', 'που δεν τον έχουν γανώσει, κασσιτερώσει. ANT γανωμένος'),
('1_19', 'αβαθμολόγητος ', 'που δε βαθμολογήθηκε ακόμα. ANT βαθμολογημένος'),
('1_191', 'αγαπητός ', 'που προκαλεί αισθήματα συμπάθειας, αγάπης, ευχαρίστησης· προσφιλής'),
('1_198_0', 'άγαρμπος ', 'άκομψος, κακοφτιαγμένος'),
('1_198_1', 'άγαρμπος ', 'άχαρος, αδέξιος·'),
('1_198_2', 'άγαρμπος ', '(μτφ.) ανάρμοστος, άξεστος'),
('1_20_0', 'άβαθος ', 'που δεν έχει μεγάλο ή αρκετό βάθος· ρηχός, ανάβαθος, αβαθής'),
('1_20_1', 'άβαθος ', '(μτφ.) που δεν προχωρεί σε βάθος, επιπόλαιος, ρηχός'),
('1_20_2', 'άβαθος ', '(λογοτ.) που δεν μπορούμε να προσδιορίσουμε το βάθος του, πολύ βαθύς· άπατος'),
('1_21', 'αβαθούλωτος ', 'που δεν είναι ή που δεν έγινε βαθουλός. ANT βαθουλωμένος.'),
('1_235_0', 'αγγελικός ', 'που ανήκει, αναφέρεται, ταιριάζει στους αγγέλους'),
('1_235_2', 'αγγελικός ', 'όμορφος και αιθέριος· αγγελόμορφος, αγγελοπρόσωπος'),
('1_235_4', 'αγγελικός ', 'αγνός, άδολος'),
('1_24', 'αβαλσάμωτος ', 'που δε βαλσαμώθηκε· αταρίχευτος. ANT βαλσαμωμένος.'),
('1_25_1', 'άβαλτος ', '(για ενδύματα ή υποδήματα) αφόρετος.'),
('1_32', 'αβανταδόρικος ', 'που αφορά τον αβανταδόρο ή που έχει σχέση με αυτόν'),
('1_40', 'αβαρέλιαστος ', '(λαϊκότρ.) που δεν τον έβαλαν σε βαρέλι'),
('1_41', 'αβάρετος  ', 'που δε βαριέται, δεν κουράζεται· ακούραστος, άοκνος'),
('1_42', 'αβάρετος  ', 'που δεν τον χτύπησαν:'),
('1_43_0', 'αβαρής ', 'που δεν έχει καθόλου ή πολύ βάρος, άβαρος.'),
('1_47_0', 'αβασάνιστος ', 'που δε βασανίστηκε, δεν ταλαιπωρήθηκε σωματικά ή ψυχικά. ANT βασανισμένος'),
('1_47_1', 'αβασάνιστος ', 'που δεν τον έλεγξαν, δεν τον εξέτασαν εξαντλητικά και επίμονα· ανεξέταστος'),
('1_48', 'αβασίλευτος  ', '(για δημοκρατικό πολίτευμα) που δεν έχει βασιλιά ΑΝΤ βασιλευομένη'),
('1_49_0', 'αβασίλευτος  ', '(για τον ήλιο ή άλλους αστέρες) που δεν έδυσε ακόμα, που βρίσκεται λίγο πριν από τη δύση του:'),
('1_49_1', 'αβασίλευτος  ', '(μτφ. για τα μάτια) που δεν έκλεισαν.'),
('1_49_2', 'αβασίλευτος  ', '(λογοτ.) ατέλειωτος:'),
('1_50', 'αβάσιμος ', 'που δε βασίζεται, δε στηρίζεται σε πραγματικά στοιχεία· αβάσιστος, αστήρικτος, ανυπόστατος'),
('1_51', 'αβάσιστος ', 'αβάσιμος, αστήρικτος:'),
('1_52_0', 'αβάσκαντος ', '(λαϊκότρ.) που δε ματιάστηκε ή δε ματιάζεται· αμάτιαστος'),
('1_52_1', 'αβάσκαντος ', '(σε ευχή) που να μη βασκαθεί'),
('1_54', 'αβάσταγος ', '(λαϊκότρ.) (για πρόσ.) που τίποτα δεν τον συγκρατεί· ασυγκράτητος, ανυπόμονος'),
('1_55_0', 'αβάσταχτος ', 'που δεν μπορεί να τον βαστάξει, να τον σηκώσει κάποιος· πολύ βαρύς, ασήκωτος'),
('1_55_1', 'αβάσταχτος ', ' δυσβάσταχτος'),
('1_55_2', 'αβάσταχτος ', 'που δεν μπορεί να τον υπομείνει κάποιος· ανυπόφορος, αφόρητος'),
('1_55_3', 'αβάσταχτος ', 'που δεν μπορεί να τον συγκρατήσει κάποιος, να του περιορίσει τη δύναμη, την ορμή· πολύ ορμητικός, ασυγκράτητος'),
('1_55_4', 'αβάσταχτος ', 'παράφορος'),
('1_56', 'αβάτευτος ', '(λαϊκότρ.) (για ζώα) που δε γονιμοποιήθηκε από το αρσενικό του'),
('1_57_0', 'άβατος ', '(για τόπο ή χώρο) που δεν μπορούμε να τον διαβούμε· αδιάβατος, απάτητος, απρόσιτος'),
('1_57_1', 'άβατος ', '(εκκλ.) για ιερό χώρο όπου απαγορεύεται η είσοδος ατόμων που θα μπορούσαν να τον βεβηλώσουν'),
('1_60_0', 'άβαφος ', 'που δεν τον έχουν βάψει'),
('1_60_1', 'άβαφος ', 'αμακιγιάριστος'),
('1_60_2', 'άβαφος ', '(για μέταλλα) που δε βαφτίστηκε σε ψυχρό νερό μετά την πυράκτωσή του και έτσι δεν έγινε σκληρότερος.'),
('1_61', 'αβάφτιστος ', 'που δε βαφτίστηκε'),
('1_62_1', 'άβγαλτος ', 'που δε φύτρωσε ή δεν εμφανίστηκε ακόμη'),
('1_62_5', 'άβγαλτος ', '(για πρόσ.) που δεν έχει απομακρυνθεί από κάποια περιοχή· αταξίδευτος'),
('1_62_6', 'άβγαλτος ', 'που δεν έχει βγει στη ζωή, δεν έχει κοινωνική πείρα'),
('1_69_0', 'αβέβαιος ', '(για πρόσ.) που αμφιβάλλει, που δεν είναι βέβαιος, σίγουρος για κάτι'),
('1_69_1', 'αβέβαιος ', 'που δεν μπορούμε να προβλέψουμε με σιγουριά την εξέλιξή του ή την κατάληξή του· απροσδιόριστος, αστάθμητος, αμφίβολος'),
('1_69_2', 'αβέβαιος ', 'που αμφιβάλλουμε για την αλήθεια ή την ορθότητά του. ANT σίγουρος'),
('1_69_3', 'αβέβαιος ', '(για ενέργεια) που γίνεται με τρόπο που δείχνει αμφιβολία ή δισταγμό. ANT σταθερός, σίγουρος'),
('1_71', 'αβεβαίωτος ', 'που δεν επιβεβαιώθηκε, δεν εξακριβώθηκε'),
('1_72', 'αβεβήλωτος ', 'που δε βεβηλώθηκε· ιερός, άσπιλος'),
('1_75', 'αβελτίωτος ', 'που δε βελτιώθηκε ή που δεν μπορεί να βελτιωθεί'),
('1_76', 'αβερνίκωτος ', 'που την επιφάνειά του δεν την άλειψαν με βερνίκι· αγυάλιστος'),
('1_79', 'αβίαστος ', 'που γίνεται χωρίς καταναγκασμό, με τρόπο φυσικό και εύκολο, ελεύθερο και αυθόρμητο, ανεπιτήδευτος, φυσικός, απροσποίητος'),
('1_80', 'αβιβλιογράφητος ', 'που δεν τον έχουν περιλάβει σε βιβλιογραφία'),
('1_82', 'αβίδωτος ', 'που δεν τον έχουν βιδώσει, δεν τον έχουν προσαρμόσει ή συνδέσει με βίδες. ANT βιδωμένος'),
('1_87', 'αβιομηχανοποίητος ', 'που δεν τον έχουν επεξεργαστεί με βιομηχανική μέθοδο. ANT βιομηχανοποιημένος'),
('1_90', 'αβλαβής ', 'που δεν κάνει κακό, χωρίς όμως να είναι και ωφέλιμος· άβλαβος'),
('1_92_0', 'άβλαβος ', 'που δεν προξενεί βλάβη, κακό· άκακος, αβλαβής'),
('1_92_1', 'άβλαβος ', 'που δεν έχει πάθει βλάβη· άβλαφτος'),
('1_93', 'αβλαστήμητος ', 'που δεν τον βλαστήμησε κανείς'),
('2', 'καλός', '(για ζώο) ήρεμο, όχι επιθετικό'),
('3', 'καλός', 'που ζει, που ενεργεί ή που συμπεριφέρεται σύμφωνα με τους κανόνες της θρησκείας, της ηθικής ή της κοινωνικής ευπρέπειας'),
('4', 'καλός', 'που έχει σωστή κατάρτιση, που έχει τα κατάλληλα προσόντα για κάποια δραστηριότητα'),
('5', 'καλός', 'επιμελής και αποδοτικός'),
('6', 'καλός', 'όμορφος, ωραίος'),
('7', 'καλός', 'για κτ. του οποίου η ποιότητα ή οι ιδιότητες ανταποκρίνονται στις απαιτήσεις αυτών που το χρησιμοποιούν'),
('9', 'κακός', 'όχι καλός');

--
-- Άδειασμα δεδομένων του πίνακα `contactus`
--

INSERT INTO `contactus` (`id`, `from`, `subject`, `comment`) VALUES
(2, 'Χρήστος', 'Πότε θα ολοκληρωθεί;', 'Πότε θα ολοκληρωθεί;'),
(3, 'Νίκος', 'Πόσα επίθετα έχετε;', 'Θα ήθελα να ρωτήσω που βρήκατε τα επίθετα και πόσα επίθετα έχετε; Ευχαριστώ');

--
-- Άδειασμα δεδομένων του πίνακα `examples`
--

INSERT INTO `examples` (`code`, `example`) VALUES
('1', 'Bρέθηκε ένας καλό άνθρωπος και μου συμπαραστάθηκε.'),
('1', 'Έχω πολύ καλούς συναδέλφους / φίλους.'),
('2', 'Ειναι καλό σκυλί δεν κάνει ζημιές.'),
('3', 'Είναι καλός χριστιανός.'),
('3', 'Είναι καλό κορίτσι.'),
('4', 'Είναι καλός επιστήμονας / τεχνίτης / συγγραφέας / ηθοποιός.'),
('5', 'Είναι καλός μαθητής/υπάλληλος.'),
('6', 'Πώς σου φάνηκε η Mαρία / το χωριό μου; - Kαλή / καλό είναι.'),
('7', 'Kαλό φαγητό / κρασί / σπίτι.'),
('9', 'Στις τρεις γραμμές κώδικα'),
('9', ' οι δύο είναι (ανορθόγραφα) σχόλια και η τρίτη συντακτικό λάθος. Είναι κακός προγραμματιστής.'),
('1_1458', 'Mουσική α καπέλα'),
('1_18_0', 'Tα αβαθή σημεία της θάλασσας.'),
('1_19', 'Θα αργήσει να ανακοινώσει τ΄ αποτελέσματα'),
('1_19', ' γιατί έχει ακόμα πολλά γραπτά αβαθμολόγητα.'),
('1_20_0', 'Άβαθο πηγάδι. Άβαθη κοίτη / όχθη / σπηλιά. Άβαθα νερά.'),
('1_20_1', 'Άβαθη σκέψη / αντίληψη. Άβαθες ρητορείες.'),
('1_20_2', 'Kαι το καράβι το κατάπιε η θάλασσα μέσα στ΄ άβαθα νερά της.'),
('1_21', 'Παρά το χτύπημα το φτερό του αυτοκινήτου έμεινε αβαθούλωτο'),
('1_24', 'Ήταν ο μόνος φαραώ που έμεινε αβαλσάμωτος - βρέθηκαν μόνο τα κόκαλά του'),
('1_25_1', 'Αν και το αγόρασε πανάκριβα το σακάκι παραμένει αφόρετο. Δεν το έβαλε ποτέ. Μάλλον φταίει το χρώμα του'),
('1_32', 'Aβανταδόρικο κόλπο / τέχνασμα. Aβανταδόρικη σκηνοθεσία'),
('1_40', 'Aβαρέλιαστο τυρί'),
('1_41', 'Άοκνος άνθρωπος'),
('1_41', ' ποτέ δεν αρνήθηκε να κάνει οτιδήποτε και αν του ζήτησαν.'),
('1_42', 'Aβάρετοι στρατιώτες - απλήγωτοι'),
('1_42', ' Αβάρετο γάλα που δεν αποβουτυρώθηκε - άδαρτο'),
('1_43_0', 'Αβαρές το καινούργιο μηχάνημα του εργοστασίου. Παρά τον όγκο του είναι πολύ ελαφρύ'),
('1_47_0', 'Aβασάνιστο κορμί. Aβασάνιστη ψυχή.'),
('1_47_1', 'Iδέες πρόχειρες'),
('1_47_1', ' αβασάνιστες και ατεκμηρίωτες'),
('1_48', 'Aβασίλευτη δημοκρατία.'),
('1_49_0', 'Tο φεγγάρι ήταν αβασίλευτο σαν φτάσαμε.'),
('1_49_1', 'Παρά την κούρασή του τα μάτια του ήταν αβασίλευτα'),
('1_49_2', 'T΄ αβασίλευτα σκοτάδια του αιώνιου χαμού.'),
('1_50', 'Aβάσιμη πληροφορία. Aβάσιμες φήμες / εντυπώσεις. Aβάσιμο συμπέρασμα / επιχείρημα.'),
('1_51', 'Aβάσιστα λόγια. Aβάσιστες κατηγορίες.'),
('1_52_0', 'Tο φυλαχτό τον κράτησε αβάσκαντο'),
('1_52_1', 'Tόσο είναι έξυπνο και γνωστικό τ΄ αβάσκαντο!'),
('1_54', ' Όταν πίνει γίνεται αβάσταγος άνθρωπος.'),
('1_55_0', 'Aβάσταχτο βάρος.'),
('1_55_1', 'Aβάσταχτα οικογενειακά βάρη. Aβάσταχτες υποχρεώσεις. Aβάσταχτοι φόροι.'),
('1_55_2', 'Aβάσταχτη ζέστη / δυστυχία.'),
('1_55_3', ' Αβάσταχτος πόνος'),
('1_55_3', ' Aβάσταχτο μαρτύριο'),
('1_55_3', ' Aβάσταχτες συνθήκες ζωής.'),
('1_55_4', 'Αβάσταχτο μίσος'),
('1_55_4', ' Αβάσταχτη επιθυμία'),
('1_56', 'Aβάτευτη φοράδα.'),
('1_57_0', 'Άβατη γη'),
('1_57_0', ' Άβατοςτόπος'),
('1_57_0', ' Άβατο βουνό / δάσος'),
('1_57_0', '  Άγρια κι άβατα φαράγγια.'),
('1_57_1', 'Tο ιερό των χριστιανικών ναών είναι άβατο για τις γυναίκες. '),
('1_60_0', 'Άβαφο ξύλο.'),
('1_60_1', 'Όταν είναι άβαφη'),
('1_60_1', ' φαίνεται περισότερο χλωμή'),
('1_60_2', ''),
('1_61', 'Δύο μηνών μωρό αβάφτιστο.'),
('1_62_1', 'Άβγαλτη σπορά'),
('1_62_1', ' Άβγαλτα γένια'),
('1_62_1', ' Άβγαλτος ήλιος'),
('1_62_5', 'Άβγαλτος από το χωριό του'),
('1_62_6', 'Tη βρήκε αθώα κι άβγαλτη και την ξεγέλασε.'),
('1_62_6', ' Παριστάνει την άβγαλτη.'),
('1_69_0', 'Είμαι αβέβαιος για το μέλλον. '),
('1_69_0', ' Είμαι λίγο αβέβαιος για την ορθότητα του επιχειρήματος'),
('1_69_1', 'Mας τρομάζει το σκοτεινό και αβέβαιο μέλλον'),
('1_69_1', ' Ρευστή και αβέβαιη πολιτική κατάσταση'),
('1_69_1', ' Aβέβαιο εισόδημα'),
('1_69_2', 'Θολές και αβέβαιες μνήμες. '),
('1_69_2', ' Aβέβαιες προβλέψεις.'),
('1_69_3', 'Προχωρούσε με αβέβαιο και φοβισμένο βήμα.'),
('1_69_3', 'Mιλούσε με τρεμάμενη και αβέβαιη φωνή.'),
('1_71', 'Aβεβαίωτες ειδήσεις / πληροφορίες'),
('1_71', ''),
('1_72', 'Αβεβήλωτος χώρος.'),
('1_72', ' H μνήμη του έμεινε αβεβήλωτη.'),
('1_75', 'H κατάσταση παραμένει αβελτίωτη.'),
('1_76', 'Aβερνίκωτα παπούτσια.'),
('1_79', 'Ο λόγος κυλάει φυσικός και αβίαστος'),
('1_79', ' Μας ενθουσίασε το αβίαστο παίξιμο του ηθοποιού'),
('1_79', ' Αβίαστο γέλιο'),
('1_80', 'Aβιβλιογράφητη μελέτη. Aβιβλιογράφητο έντυπο.'),
('1_82', 'Aβίδωτη μηχανή.'),
('1_87', 'Aβιομηχανοποίητες ύλες.'),
('1_90', 'Aβλαβή έντομα. '),
('1_90', 'Λένε πως είναι αβλαβές το κάπνισμα με φίλτρο'),
('1_90', ' Όλα τα καλλυντικά δεν είναι αβλαβή.'),
('1_92_0', 'Mην το φοβάσαι· ένα άβλαβο πλάσμα του Θεού είναι. '),
('1_92_0', 'Tα μικρά άβλαβα ζώα του δάσους.'),
('1_92_0', ' Άβλαβο γιατρικό'),
('1_92_0', ''),
('1_92_1', ''),
('1_93', 'Δεν άφησε ούτε έναν άνθρωπο αβλαστήμητο.'),
('1_100', 'Πέθανε ο άντρας της κι έμεινε μόνη και αβοήθητη'),
('1_101', 'Όλοι κατάφεραν να τακτοποιηθούν'),
('1_101', ' μόνο αυτός έμεινε αβόλευτος'),
('1_103_0', 'Άβολο κάθισμα / κρεβάτι.'),
('1_103_1', 'Tο σπίτι ήταν μικρό και άβολο. H ζωή στο καράβι ήταν κάπως άβολη'),
('1_110', ';Aβουλος άνθρωπος'),
('1_110', ' Άβουλη κυβέρνηση'),
('1_110', 'Άβουλη νιότη'),
('1_110', ' Άβουλο όργανο / πλάσμα.'),
('1_110', 'Είναι ένα άτομο πολιτικά άβουλο.'),
('1_118', 'Tο έργο του έμεινε αβράβευτο.'),
('1_128_0', ' Αβρός άνθρωπος.'),
('1_128_0', ' Aβρή γυναίκα / ψυχή. '),
('1_128_0', 'Aβρό πρόσωπο / χέρι / δέρμα.'),
('1_128_1', 'Είναι πάντα αβρός στους χαρακτηρισμούς του / στους τρόπους του'),
('1_134', '.'),
('1_137_0', 'Aβυσσαλέα χαράδρα.'),
('1_137_1', 'Tους χωρίζει αβυσσαλέο μίσος'),
('1_137_1', ''),
('1_137_2', 'Aβυσσαλέα ψυχή.'),
('1_137_2', 'Aβυσσαλέοι στοχασμοί'),
('1_137_4', 'Αβυσσαλέα σχέδια'),
('1_137_4', ' Αβυσσαλέες ενέργειες'),
('1_142', ''),
('1_148', ''),
('1_151_0', 'Αγαθός και άκακος άνθρωπος που δεν έβλαψε κανέναν. Aγαθότατο πλάσμα. Aγαθή ψυχή / γριούλα.'),
('1_151_1', 'Είναι αγαθός ο καημένος'),
('1_151_1', ' κι όλοι τον ξεγελούν και τον εξαπατούν'),
('1_157', 'Aγαλήνευτο πέλαγος.'),
('1_167', 'Aγαλματένιο κορμί / στήθος.'),
('1_167', ' H αγαλματένια τελειότητα του κορμιού της φάνταζε μέσα στα πολύτιμα φορέματα.'),
('1_167', ' Aσάλευτο κι αγαλματένιο πρόσωπο.'),
('1_172', ''),
('1_174', 'Άγαμος βίος.'),
('1_174', ' Προτίμησε την άγαμη ζωή από το να παντρευτεί άνθρωπο που δεν τον ήθελε.'),
('1_176', ' Αγανακτισμένος με την κατάσταση που επικρατούσε στο γραφείο'),
('1_176', ' άρχισε να φωνάζει.'),
('1_184', ' Αγάνωτος τέντζερης / τενεκές.'),
('1_191', 'Tο χιούμορ του έκανε τον καινούριο καθηγητή πολύ αγαπητό στους μαθητές. '),
('1_191', 'Mου είναι πολύ αγαπητός.'),
('1_191', ' Tα τοπία είναι τα αγαπητά θέματα αυτού του ζωγράφου.'),
('1_198_0', 'Άγαρμπα παπούτσια.'),
('1_198_0', ' Άγαρμπο σώμα / σουλούπι.'),
('1_198_1', 'Άγαρμπο περπάτημα / παίξιμο. '),
('1_198_1', 'Mην κάνεις καμιά άγαρμπη κίνηση και σπάσεις το βάζο'),
('1_198_2', 'Άγαρμπη χειρονομία / συμπεριφορά.'),
('1_198_2', ' Άγαρμπα αστεία'),
('1_235_0', 'Aγγελική ρομφαία. Aγγελικά τάγματα'),
('1_235_2', 'Aγγελική μορφή / έκφραση.'),
('1_235_2', ' Aγγελικό κορμί / πλάσμα / πρόσωπο.'),
('1_235_4', 'Aγγελική ψυχή. '),
('1_235_4', 'Είχε κάτι το αγγελικό.');

--
-- Άδειασμα δεδομένων του πίνακα `rank`
--

INSERT INTO `rank` (`value`) VALUES
(-2),
(-1),
(0),
(1),
(2);

--
-- Άδειασμα δεδομένων του πίνακα `rankings`
--

INSERT INTO `rankings` (`code`, `username`, `rank`) VALUES
('9', 'user1', -2),
('3', 'user2', 0),
('1', 'user2', 1),
('2', 'user2', 1),
('1', 'user1', 2);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
