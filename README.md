# Materiale Formazione

<details><summary>Cliccami</summary>
NB: Ogni volta che vedete la freccia cliccatela
</details>

<details><summary>Indice</summary>

- [Materiale Formazione](#materiale-formazione)
  - [Teoria](#teoria)
    - [OOP](#oop)
      - [Da sapere](#da-sapere)
    - [MVC](#mvc)
      - [Da sapere](#da-sapere-1)
    - [RESTful programming](#restful-programming)
      - [JSON](#json)
        - [Da sapere](#da-sapere-2)
        - [Esercizi](#esercizi)
      - [REST API](#rest-api)
  - [Strumenti gestione](#strumenti-gestione)
    - [Git](#git)
  - [Database](#database)
    - [Linguaggi](#linguaggi)
      - [SQL](#sql)
        - [Esercizi](#esercizi-1)
    - [Tools](#tools)
      - [Liquibase](#liquibase)
  - [Back-end](#back-end)
    - [Linguaggi](#linguaggi-1)
      - [Java](#java)
        - [Esercizi](#esercizi-2)
    - [Tools](#tools-1)
    - [Framework](#framework)
      - [Spring](#spring)
      - [Hibernate](#hibernate)
  - [Front-end](#front-end)
    - [Linguaggi](#linguaggi-2)
      - [HTML](#html)
      - [CSS/Sass](#csssass)
      - [JavaScript](#javascript)
        - [Esercizi](#esercizi-3)
      - [Typescript](#typescript)
    - [Tools](#tools-2)
      - [Node.js](#nodejs)
      - [Npm](#npm)
      - [Webpack](#webpack)
    - [Framework](#framework-1)
      - [Angular](#angular)

</details>

---

## Teoria

### OOP

Il paradigma di programmazione più comune, serve a comprendere la logica di sviluppo di applicazioni complesse.

[OOP](https://en.wikipedia.org/wiki/Object-oriented_programming)

#### Da sapere

* <details><summary>Elementi atomici del OOP</summary>

    * Oggetti
    * Classi

    </details>

* <details><summary>Proprietà</summary>

    *  encapsulation
    *  composition, inheritance, and delegation
    *  polymorphism

  </details>

### MVC

Il pattern architetturale per lo sviluppo web che consente di suddividere logicamente i componenti di una applicazione.

* [Wikipedia](https://it.wikipedia.org/wiki/Model-view-controller)
* [MVC framework intro](https://www.tutorialspoint.com/mvc_framework/mvc_framework_introduction.htm)

#### Da sapere

* Componenti logici
* Composizione della struttura (chi comunica con chi e come)

### RESTful programming

Per far comunicare 2 sistemi è necessario di un canale di comunicazione e di un protocollo con cui i messaggi vengono trasferiti. Nel caso delle web app, il canale di comunicazione è internet e il protocollo usato è HTTP. Per scambiare messaggi attraverso questo canale è anche necessario definire il sistema di trasmissione e il linguaggio/formato del messaggio, nel nostro caso useremo il sistema REST e il formato JSON.

#### JSON

* [What Is Json](https://www.w3schools.com/whatis/whatis_json.asp)
* [Spiegazione della struttura](https://json.org/json-it.html)

##### Da sapere

* Syntax rules
* JSON name value
* JSON Object
* JSON Arrays

##### Esercizi

1. Costruire un JSON che contenga:
    * Una lista di 2 record
    * Ogni record rappresenta un oggetto persona con un nome, un cognome e una lista di competenze
    * Una competenza è un oggetto con una stringa che indica il nome della competenza
    
    Esempio: Mario Rossi ha competenze in Java e Spring e Maria Bianchi in Javascript e Angular.
    
    <details><summary>Soluzione</summary>
    
    ```JSON
    [
      {
        "Nome" :"Mario",
        "Cognome" :"Rossi",
        "Competenze" :[
          {
            "Nome" :"Java"
          },
          {
            "Nome" :"Spring"
          }
        ]
      },
      {
        "Nome" :"Maria",
        "Cognome" :"Bianchi",
        "Competenze" :[
          {
            "Nome" :"Javascript"
          },
          {
            "Nome" :"Angular"
          }
        ]
      },
    ]
    ```
    </details>

2. Accedere alla prima competenza della seconda persona considerando che la lista sia dell'oggetto creato nell'esercizio 1 sia definita ***persons***.

    <details><summary>Soluzione</summary>

    ```
    persons[1][Competenze][0]
    ```

    </details>

#### REST API

* [Wikipedia](https://it.wikipedia.org/wiki/Representational_State_Transfer)
* [Youtube - REST API concepts and examples](https://www.youtube.com/watch?v=7YcW25PHnAA)

***Consiglio: il video youtube spiega molto bene e da una panoramica sul funzionamento di questo sistema architetturale.***

---

## Strumenti gestione

### Git

Collaborare nella programmazione è fondamentale, per farlo vengono usati dei sistemi chiamati version control system. 

* [Slides prima lezione git](https://slides.com/gabrielepuliti/git-gitflow)
* [Mini guida per iniziare](https://rogerdudler.github.io/git-guide/index.it.html)
* [ProGit - la guida ufficiale](https://git-scm.com/book/en/v2)

***Consiglio: se siete impazienti la mini guida è la via migliore, se volete entrare nello specifico potete usare le slides per avere anche degli esempi pratici altrimenti c'è la guida completa ufficiale.***

---

## Database

La persistenza dei dati in un applicativo, non solo web, è fondamentale. Per mantenere i dati si usano dei database, nel nostro caso principalmente vengono usati i tipi relazionali.

[Modello relazionale](https://it.wikipedia.org/wiki/Modello_relazionale)

Le operazioni che possono essere fatte in un database sono 4 e sono definite CRUD: creazione (**C**reate), lettura (**R**ead), aggiornamento (**U**pdate) e cancellazione (**D**elete).

[CRUD](https://en.wikipedia.org/wiki/Create,_read,_update_and_delete)

Da notare l'associazione alle chiamate di tipo REST:

  * Create --> Post
  * Read --> Get
  * Update --> Put
  * Delete --> Delete

### Linguaggi

Per eseguire le operazioni CRUD su un database è necessario un linguaggio.

#### SQL

* [Sintassi](https://www.1keydata.com/it/sql/sintassi-sql.php)
* [SQLBook](https://goalkicker.com/SQLBook/)
* [SQLBook 2](https://www.syncfusion.com/ebooks/sql_queries_succinctly)

##### Esercizi

* [Hackerrank](https://www.hackerrank.com/domains/sql)

***Consiglio: Un'occhiata alla sintassi e poi esercizi su hackerrank.***

### Tools

#### Liquibase

Mantenere il database riproducibile e versionabile è sempre stato uno dei più grandi problemi di sempre, questo strumento risolve il problema.

[Liquibase - get started](https://www.liquibase.org/get_started/how-lb-works.html)

***Consiglio: l'importante è sapere che esiste e come funziona.***

---

## Back-end

Il core di un software è senza alcun dubbio la parte che si mette in mezzo tra il lato client e il database, stiamo parlando di backend. In questo livello si trova l'effettiva implementazione delle logiche di business di un applicativo.

* [Wikipedia](https://it.wikipedia.org/wiki/Front-end_e_back-end)

Sicuramente lo stack più comunemente usato per la parte server di una web application è java/spring/maven.

### Linguaggi

#### Java 

Linguaggio comunemente usato sia nelle software house che in ambiente accademico, molto flessibile e allo stesso tempo solido. Grazie alla Java Virtual Machine su cui viene eseguito è indipendente dall'hardware su cui viene eseguito.

Si consiglia Java almeno alla versione 9.

* Un qualsiasi video tutorial su youtube ([1](https://www.youtube.com/watch?v=grEKMHGYyns), [2](https://www.youtube.com/playlist?list=PLE7E8B7F4856C9B19)) o piattaforme come udemy o cursera
* Una guida online su [codecademy](https://www.codecademy.com/learn/learn-java/) o [learn x in y minutes](https://learnxinyminutes.com/docs/it-it/java-it/)
* Libri 

<details><summary>Da sapere</summary>

* I tipi primitivi
* Dichiarazione di una variabile
* Definire una classe
* Dichiarare un metodo e invocarlo
* Il costruttore di una classe
* Array
* Package e import
* Gli operatori base (somma, prodotto, etc.etc.)
* If Else
* Operatore ternario
* Switch
* For, While
* Incapsulamento: utilizzo del *this*
* Modificatori d'accesso (public, protected, private)
* Modificatore static, final, abstract
* Ereditarietà (super)
* Polimorfismo (Override, Overload, implements, extends)
* Eccezioni, errori ed asserzioni
* Enumerazioni
* Generics e Wildcards
* Librerie importanti: 
  * java.lang
  * java.util
* Annotazioni
* Lambda Expressions - ([Libro](https://www.oreilly.com/programming/free/files/introducing-java-8.pdf))
* Streams - [Guida online](https://www.baeldung.com/java-8-streams)
</details>

##### Esercizi

* [Hackerrank](https://www.hackerrank.com/domains/java)
* [Open Kattis](https://open.kattis.com/problems)

***Consiglio: il problem solving è molto importante quindi fare tanti esercizi.***

### Tools

In progetti abbastanza complessi e grandi è necessario avere uno strumento che consenta la gestione delle dipendenze e delle build. Maven è il più famoso e sicuramente uno dei più difficili da comprendere a pieno.

* [Maven](https://maven.apache.org/)

### Framework

#### Spring

Difficilmente le cose si fanno da zero, per questo esistono i framework, perchè creare qualcosa da zero è a volte troppo complesso soprattutto per creare qualcosa multi materia. Spring è sicuramente il framework più completo per java grazie a spring core e spring boot.

Ci sono diverse guide in giro per il web (youtube, udemy, cursera), ma anche quelle sul sito ufficiale sono fatte molto bene.

* [Guida ufficiale](https://spring.io/guides):

  * [Rest service](https://spring.io/guides/gs/rest-service/)
  * [Consuming Rest](https://spring.io/guides/gs/consuming-rest/)
  * [Maven](https://spring.io/guides/gs/maven/)
  * [Accessing data jpa](https://spring.io/guides/gs/accessing-data-jpa/)
  * [Accessing data rest](https://spring.io/guides/gs/accessing-data-rest/)
  * [Accessing data mysql](https://spring.io/guides/gs/accessing-data-mysql/)
  * [Building Rest Services](https://spring.io/guides/tutorials/bookmarks/) <- importante

* [Youtube playlist video](https://www.youtube.com/watch?v=msXL2oDexqw&list=PLqq-6Pq4lTTbx8p2oCgcAQGQyqN8XeA1x)
* [Free ebook](https://www.packtpub.com/free-ebooks/application-development/software-architecture-spring-50/9781788992992)

***Consiglio: La guida ufficiale è fatta molto bene. Da saper bene soprattutto la guida su come creare servizi rest completi.***

#### Hibernate

Questa libreria permette di interfacciarsi con i dati persistenti in un database, condizione necessaria per avere una web app usufruibile.

* [Hibernate quick start](https://docs.jboss.org/hibernate/orm/current/quickstart/html_single/)
* [java tutorial point - hibernate tutorial](https://www.javatpoint.com/hibernate-tutorial)

---

## Front-end

Tutto ciò che l'utente vede viene generalmente indicato con front-end, questa parola racchiude in se la visualizzazione dei dati che richiediamo al back-end.

* [Wikipedia](https://it.wikipedia.org/wiki/Front-end_e_back-end)

### Linguaggi

#### HTML

Questo è un linguaggio di tipo merkup (non è un linguaggio quindi di programmazione), serve per visualizzare graficamente contenuti testuali e non.

* [learn X in Y minutes](https://learnxinyminutes.com/docs/html/)
* [Mozilla developer](https://developer.mozilla.org/en-US/docs/Web/HTML)
* [W3School](https://www.w3schools.com/html/)

<details><summary>Da sapere</summary>

* Struttura di un documento HTML
* Gli elementi body e head
* Headings
* Links
* Immagini
* Array
* Bottoni
* Liste
* Gli attributi dei tag
* Line Break

</details>

***Consiglio: non importa andare molto a fondo in questo linguaggio, conoscere la sua sintassi e i tag base è sufficiente. Se volete avere una lista di tutti i tag potete trovarla qui: [w3schools](https://www.w3schools.com/tags/default.asp).***

#### CSS/Sass

Per definire la formattazione di un documento HTML è necessario un ulteriore tipologia di linguaggi chiamati fogli stile. Inizialmente sono nati i CSS introdotti per separare le pagine HTML dalla loro formattazione.

* [MarkSheet - free HTML CSS tutorial](https://marksheet.io/)
* [CSS Cheat sheet](https://websitesetup.org/css3-cheat-sheet/)

Attualmente al posto di scrivere fogli stile classici in formato css, si preferisce passare da un linguaggio di preprocessing chiamato Sass. Questo linguaggio permette di rendere più efficienti, leggibili e mantenibili i fogli stile che scriviamo. Sass può interpretare 2 sintassi: la sintassi Sass e la sintassi SCSS (Sassy CSS).

* [Sass](https://sass-lang.com/guide)

***Consiglio: non perdere tanto tempo sui fogli stile.***

#### JavaScript

Probabilmente il linguaggio attualmente più usato al mondo, Javascript è comunemente usato per la programmazione lato web client trasformando le pagine statiche in dinamiche.

* Impara javascript usando il terminale: [workshopper/javascripting](https://github.com/workshopper/javascripting)
* Un qualsiasi video tutorial su youtube ([1](https://www.youtube.com/watch?v=PkZNo7MFNFg), [2](https://www.youtube.com/playlist?list=PLYrQFCVhfFIvLARCdl9q5WyPnfRBX4rUT)) o piattaforme come udemy o cursera, ma anche [solo learn](https://www.sololearn.com/Course/JavaScript/)
* Una guida online su [developer mozilla](https://developer.mozilla.org/en-US/docs/Web/JavaScript), [JavaScript for Cats](http://jsforcats.com/)
* Libri 

##### Esercizi

* [javascript-challenges-book](https://tcorral.github.io/javascript-challenges-book/autoexecute/README.html)
* [Hackerrank](https://www.hackerrank.com/domains/tutorials/10-days-of-javascript)

***Consiglio: ci sono molte curiosità interessanti attorno a questo linguaggio, a partire dal fatto che il linguaggio è stato pensato definito e creato nella sua prima versione in 9 giorni, fino al perchè gli sia stato affidato questo nome nonostante non ci siano grandi somiglianze con il linguaggio java.***

#### Typescript

TypeScript permette di non soffrire dal passaggio da linguaggi di programmazione orientati agli oggetti a JavaScript in cui sono assenti i tipi. TypeScript è di per se un'estensione di JavaScript e qualsiasi script JavaScript è anche codice TypeScript valido.

* [Guida ufficiale ](https://www.typescriptlang.org/docs/home.html)
* [Guida in italiano - non completa](https://github.com/Wabri/LearningTypescript/blob/master/README.md)

### Tools

#### Node.js

È un esecutore Javascript al di fuori di un qualsiasi web browser che supporta il linguaggio. Questo permette di sviluppare strumenti per la linea di comando oppure può essere usato anche come linguaggio di scripting a livello server.

* [Web site](https://nodejs.org/)

***Consiglio: installate la versione LTS.***

#### Npm

Potrebbe essere definito il similare di Maven per javascript, questo tool permette di gestire e creare moduli/pacchetti javascript oppure eseguire build node.

* [About npm](https://docs.npmjs.com/about-npm/)
* [Install npm](https://docs.npmjs.com/downloading-and-installing-node-js-and-npm)

#### Webpack

Per raccogliere e creare dei veri e propri bundle di tutta la parte frontend, viene usato webpack. Questo strumento prende i moduli di un progetto e relative dipendenze generando in output un boundle statico contentente tutto.

[Webpack](https://webpack.js.org/)

### Framework

#### Angular

Sicuramente uno dei framework javascript/typescript più completi e usati al mondo, si basa sul pattern architetturale [MVC](#mvc) e sul single-page applications. Il linguaggio usato è il [TypeScript](#typescript), è consigliato quindi conoscerne le basi.

[Angular docs](https://angular.io/docs)

***Consiglio: Angular è molto importante e lo sviluppo si basa principalmente su di esso, quindi farlo bene è necessario.***
