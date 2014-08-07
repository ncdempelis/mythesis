-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Φιλοξενητής: localhost
-- Χρόνος δημιουργίας: 07 Αυγ 2014 στις 14:44:20
-- Έκδοση Διακομιστή: 5.5.35
-- Έκδοση PHP: 5.5.11-2+deb.sury.org~precise+2

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
('2', 'καλός', '(για ζώο) ήρεμο, όχι επιθετικό'),
('3', 'καλός', 'που ζει, που ενεργεί ή που συμπεριφέρεται σύμφωνα με τους κανόνες της θρησκείας, της ηθικής ή της κοινωνικής ευπρέπειας'),
('4', 'καλός', 'που έχει σωστή κατάρτιση, που έχει τα κατάλληλα προσόντα για κάποια δραστηριότητα'),
('5', 'καλός', 'επιμελής και αποδοτικός'),
('6', 'καλός', 'όμορφος, ωραίος'),
('7', 'καλός', 'για κτ. του οποίου η ποιότητα ή οι ιδιότητες ανταποκρίνονται στις απαιτήσεις αυτών που το χρησιμοποιούν'),
('9', 'κακός', 'όχι καλός');

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
('9', ' οι δύο είναι (ανορθόγραφα) σχόλια και η τρίτη συντακτικό λάθος. Είναι κακός προγραμματιστής.');

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
