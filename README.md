# Kirja-arvostelu

- Käyttäjä pystyy luomaan tunnuksen sekä kirjautumaan sovellukseen.
- Käyttäjä pystyy lisäämään, muokkaamaan sekä poistamaan tekemiään kirja-arvosteluja, jotka koostuvat kirjan nimestä, kirjailijasta sekä sanallisesta arvostelusta.
- Käyttäjä pystyy näkemään lisäämänsä kirja-arvostelut. Käyttäjä pystyy näkemään myös muiden lisäämät kirja-arvostelut.
- Käyttäjä pystyy etsimään omia sekä muiden käyttäjien kirja-arvosteluja hakemalla kirjan nimeä.
- Sovellus sisältää käyttäjäsivut, josta näkyy jokaisen käyttäjän tilastot sekä käyttäjän lisäämät kirja-arviot.
- Käyttäjän on mahdollista valita yksi tai useampi luokittelu arvostelemalleen kirjalle (uusi vai vanha, genre, sivumäärä).
- Käyttäjä pystyy sanallisen arvion lisäksi antamaan kirjasta lukusuosituksen numeroasteikolla 1-5 (1 = ei kannata lukea, 5 = kannattaa ehdottomasti lukea).
- Käyttäjät pystyvät antamaan kommentteja kirja-arvosteluihin numeroarvion (asteikko 1-5) sekä sanallisen arvion muodossa.

## Sovelluksen asennus

Asenna `flask`-kirjasto:

```
$ pip install flask
```

Luo tietokannan taulut ja lisää alkutiedot:

```
$ sqlite3 database.db < schema.sql
$ sqlite3 database.db < init.sql
```

Sovellus käynnistetään komentorivillä komennolla `flask run`
