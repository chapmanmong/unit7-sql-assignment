SELECT card, count(*) FROM transaction WHERE amount < 2 GROUP BY card ORDER BY count(*) DESC LIMIT 10;

SELECT * FROM transaction where card = '376027549341849' ORDER BY date;

SELECT * FROM transaction where card = '584226564303' ORDER BY date;

SELECT * FROM transaction where card = '344119623920892' ORDER BY date;

SELECT * FROM transaction where card = '180098539019105' ORDER BY date;

SELECT * FROM transaction where card = '3516952396080247' ORDER BY date;

SELECT * FROM transaction where card = '4743204091443101526' ORDER BY date;

SELECT * FROM transaction where card = '4962915017023706562' ORDER BY date;

SELECT * FROM transaction where card = '3561954487988605' ORDER BY date;

SELECT * FROM transaction where card = '503842928916' ORDER BY date;

SELECT * FROM transaction where card = '4268491956169254' ORDER BY date;



SELECT * FROM transaction where extract(hour from date) BETWEEN 7 and 9 ORDER BY amount DESC LIMIT 100;

SELECT id_merchant, count(*) FROM transaction where amount < 2 GROUP BY id_merchant ORDER BY count(*) DESC LIMIT 5;






