INSERT into studenci(IdStudenta,ImieStudenta,NazwiskoStudenta) VALUES(NULL,"Angel","Kennedy");
UPDATE studenci Set MiastoStudenta = (SELECT MiastoStudenta from studenci where ImieStudenta = "John" and NazwiskoStudenta = "kennedy"),
studenci.KodPocztowyStudenta = (SELECT KodPocztowyStudenta from studenci where ImieStudenta = "John" and NazwiskoStudenta = "kennedy"),
studenci.AdresStudenta = (SELECT AdresStudenta from studenci where ImieStudenta = "John" and NazwiskoStudenta = "kennedy"),
studenci.StanZamStudenta = (SELECT StanZamStudenta from studenci where ImieStudenta = "John" and NazwiskoStudenta = "kennedy"),
PlecStudenta = "k", 
studenci.KierunekStudiow = (SELECT KierunekStudiow from studenci where ImieStudenta = "John" and NazwiskoStudenta = "kennedy") 
WHERE ImieStudenta="Angel" AND NazwiskoStudenta = "Kennedy";


INSERT into studenci(IDStudenta,ImieStudenta,NazwiskoStudenta,AdresStudenta,MiastoStudenta,
                     StanZamStudenta,KodPocztowyStudenta,NumKierStudenta)
SELECT 
pracownicy.IDPracownika,
pracownicy.ImiePracownika,
pracownicy.NazwiskoPracownika,
pracownicy.AdresPracownika,
pracownicy.MiastoPracownika,
pracownicy.StanZamPracownika,
pracownicy.KodPocztowyPracownika,
pracownicy.NumKierPracownika
From pracownicy 
WHERE pracownicy.IDPracownika = 98021;





Insert into klienci(ImieKlienta,NazwiskoKlienta,AdresKlienta,MiastoKlienta,StanZamKlienta,
                   KodPocztowyKlienta,TelefonKlienta)
SELECT ImieAgenta,NazwiskoAgenta,AdresAgenta,MiastoAgenta,StanZamAgenta,
       KodPocztowyAgenta,TelefonAgenta FROM agenci where IDAgenta = 5;


