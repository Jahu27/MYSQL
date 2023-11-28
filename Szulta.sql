1. znajdz w bazie ksiazki ulozone alfabetycznie wedlug tytulu
SELECT ksiazki.tytul FROM ksiazki ORDER BY 1;

2. znajdz najdrozsza ksiazke w bazie
SELECT ksiazki.cena FROM ksiazki ORDER BY 1 DESC LIMIT 1;

3. znajdz wzystkie wyslane zamowienia
SELECT zamowienia.idzamowienia, zamowienia.data, zamowienia.status FROM zamowienia WHERE zamowienia.status LIKE "wyslano";

4. znajdz  wzystkich klientow o nazwisku rutkowski
SELECT klienci.imie, klienci.nazwisko FROM klienci where klienci.nazwisko = "Rutkowski";

5. znajdz ksiazki posiadajace wyrazenie php w tytule
select ksiazki.tytul FROM ksiazki WHERE ksiazki.tytul LIKE "%PHP%";

6. znajdz zamowienia ulozone od ostatnio dokonanego (malejaco)
SELECT zamowienia.data FROM zamowienia ORDER BY 1 DESC;

7. znajdz dla wszystkich zamowien podaj imie i nazwisko i date zamowienia i id
SELECT zamowienia.data, zamowienia.idzamowienia, klienci.imie, klienci.nazwisko 
FROM zamowienia 
INNER JOIN klienci ON klienci.idklienta = zamowienia.idklienta;

8. znajdz dla wszystkich zamowien podaj imie i nazwisko i date zamowienia i id z aliasami
SELECT zamowienia.data as "DataZamowienia", zamowienia.idzamowienia as "NumerZamowienia", klienci.imie as "ImieKlienta", klienci.nazwisko as "NazwiskoKlienta" 
FROM zamowienia 
INNER JOIN klienci ON klienci.idklienta = zamowienia.idklienta;

9. podaj imiona i nazwisko osob ktore zamowili kiedykolwiek ksiazke numer 2
SELECT klienci.imie, klienci.nazwisko, ksiazki.idksiazki, zamowienia.idzamowienia, zamowienia.data
FROM klienci 
INNER JOIN zamowienia ON klienci.idklienta = zamowienia.idklienta 
INNER JOIN ksiazki on zamowienia.idksiazki = ksiazki.idksiazki 
WHERE ksiazki.idksiazki = 2;

10. jakie ksiazki (tytul i autor) zamowila osoba jan nowak
SELECT  zamowienia.idzamowienia, zamowienia.data, ksiazki.tytul, ksiazki.imieautora, klienci.imie, klienci.nazwisko
FROM ksiazki 
INNER JOIN zamowienia ON zamowienia.idksiazki = ksiazki.idksiazki 
INNER JOIN klienci ON klienci.idklienta = zamowienia.idklienta 
WHERE klienci.imie = "Jan" AND klienci.nazwisko = "Nowak";


11. zamowienia(id, data, status, tytul zamowionej ksiazki) dokonane przez osoby
 o nazwisku rutkowski ulozone od najpozniej dokonanych 
SELECT zamowienia.idzamowienia, zamowienia.data, zamowienia.status, ksiazki.tytul, klienci.imie, klienci.nazwisko
FROM zamowienia 
INNER JOIN ksiazki ON zamowienia.idksiazki = ksiazki.idksiazki 
INNER JOIN klienci ON zamowienia.idklienta = klienci.idklienta
WHERE klienci.nazwisko = "Rutkowski"
ORDER By 2;
  
