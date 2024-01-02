UPDATE studenci Set MiastoStudenta = (SELECT MiastoStudenta from studenci where ImieStudenta = "John" and NazwiskoStudenta = "kennedy"),
studenci.KodPocztowyStudenta = (SELECT KodPocztowyStudenta from studenci where ImieStudenta = "John" and NazwiskoStudenta = "kennedy"),
studenci.AdresStudenta = (SELECT AdresStudenta from studenci where ImieStudenta = "John" and NazwiskoStudenta = "kennedy"),
studenci.StanZamStudenta = (SELECT StanZamStudenta from studenci where ImieStudenta = "John" and NazwiskoStudenta = "kennedy"),
PlecStudenta = "k", 
studenci.KierunekStudiow = (SELECT KierunekStudiow from studenci where ImieStudenta = "John" and NazwiskoStudenta = "kennedy")

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



