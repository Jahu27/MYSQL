zad1
SELECT ksiazki.tytul as tytul FROM ksiazki ORDER BY 1;
zad2
SELECT ksiazki.cena, ksiazki.tytul as tytul FROM ksiazki ORDER BY 1 DESC LIMIT 1;
zad3
SELECT zamowienia.idzamowienia, zamowienia.status FROM zamowienia WHERE zamowienia.status LIKE "wyslano";
zad 4
SELECT klienci.imie as imie, klienci.nazwisko as nazwisko FROM klienci where klienci.nazwisko LIKE "Rutkowski";
zad 5.
select ksiazki.tytul as tytul FROM ksiazki WHERE ksiazki.tytul LIKE "%PHP%";
zad 6.
SELECT zamowienia.data from zamowienia ORDER By 1 DESC;
zad 7.
SELECT klienci.imie, klienci.nazwisko, zamowienia.idzamowienia, zamowienia.data 
from zamowienia INNER JOIN klienci ON klienci.idklienta = zamowienia.idklienta;
zad 7a.
SELECT klienci.imie as imie , klienci.nazwisko as nazwisko , zamowienia.idzamowienia as id-Zamowienia,
 zamowienia.data as data
from zamowienia INNER JOIN klienci ON klienci.idklienta = zamowienia.idklienta;

8.
SELECT klienci.imie , klienci.nazwisko from klienci 
INNER join zamowienia on zamowienia.idklienta = klienci.idklienta 
INNER JOIN ksiazki on ksiazki.idksiazki = zamowienia.idksiazki WHERE ksiazki.idksiazki = 2;
9.
SELECT ksiazki.tytul as tytul , ksiazki.imieautora, ksiazki.nazwiskoautora 
FROM ksiazki INNER JOIN zamowienia ON zamowienia.idksiazki = ksiazki.idksiazki INNER JOIN klienci on 
klienci.idklienta = zamowienia.idklienta where klienci.imie like "Jan" AND klienci.nazwisko like "Nowak";
10.
SELECT klienci.imie , klienci.nazwisko, zamowienia.idzamowienia , zamowienia.data, zamowienia.status, ksiazki.tytul from klienci INNER JOIN zamowienia ON zamowienia.idklienta = klienci.idklienta 
INNER JOIN ksiazki on ksiazki.idksiazki = zamowienia.idksiazki where klienci.nazwisko like "Rutkowski";
