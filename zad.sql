Grupowanie: (creditcard z AW)

1. Policz ile jest wszystkich kart
SELECT  COUNT(creditcard.CreditCardID) FROM creditcard
2. Policz ile kart wygasa w 2008 roku
SELECT  ExpYear, COUNT(creditcard.CreditCardID) FROM creditcard WHERE ExpYear = 2008;
3. Policz ile kard wygasa w 2008 roku w październiku
SELECT ExpMonth, ExpYear, COUNT(creditcard.CreditCardID) 
FROM creditcard 
WHERE ExpYear = 2008 && ExpMonth = 10;
4. Policz ilość kart Vista
SELECT creditcard.CardType, COUNT(creditcard.CardType) 
from creditcard
where CardType = "vista";
5. Stwórz zostawienie ilości kart (po CardType) wygasających w styczniu
SELECT  CardType, COUNT(creditcard.CreditCardID) as ilosc 
FROM creditcard 
WHERE ExpMonth =1  GROUP by 1 
ORDER by COUNT(CreditCardID) DESC;

6. Wypisz 3 najliczniejsze miesiące kiedy wygasają karty Vista w 2007 roku.
SELECT creditcard.CardType,ExpYear,ExpMonth, count(ExpMonth) from creditcard 
where CardType = "vista" AND ExpYear = 2007 GROUP BY ExpMonth 
ORDER BY 4 DESC LIMIT 3;
7. W którym roku wygasa najmniej kart w miesiącach letnich?
SELECT ExpYear from creditcard where ExpMonth REGEXP"[6-8]"
GROUP BY ExpYear
ORDER by COUNT(*) ASC
LIMIT 1;

8. Utwórz zestawienie typów kart zakładając, 
że wygasają w miesiącach nieparzystych
SELECT CardType, Count(*) from creditcard
  WHERE MOD(ExpMonth,2) =1 Group By CardType;
