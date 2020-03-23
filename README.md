# Materiale Formazione

- [Materiale Formazione](#materiale-formazione)
  - [Teoria](#teoria)
    - [OOP](#oop)
    - [MVC](#mvc)
    - [RESTful programming](#restful-programming)
      - [JSON:](#json)
        - [Da sapere](#da-sapere)
        - [Esercizi](#esercizi)
      - [REST API:](#rest-api)
  - [Strumenti gestione](#strumenti-gestione)
    - [Git](#git)
  - [Back-end](#back-end)
    - [Linguaggi](#linguaggi)
    - [Tools](#tools)
    - [Framework](#framework)
      - [Spring](#spring)
  - [Database](#database)
    - [Linguaggi](#linguaggi-1)
  - [Front-end](#front-end)
    - [Linguaggi](#linguaggi-2)
    - [Tools](#tools-1)
    - [Framework](#framework-1)

---

## Teoria

### OOP

Il paradigma di programmazione più comune, serve a comprendere la logica di sviluppo di applicazioni complesse.

* https://en.wikipedia.org/wiki/Object-oriented_programming

### MVC

Il pattern architetturale per lo sviluppo web che consente di suddividere logicamente i componenti di una applicazione.

* [Wikipedia](https://it.wikipedia.org/wiki/Model-view-controller)
* [MVC framework intro](https://www.tutorialspoint.com/mvc_framework/mvc_framework_introduction.htm)



### RESTful programming

Per far comunicare 2 sistemi è necessario di un canale di comunicazione e di un protocollo con cui i messaggi vengono trasferiti. Nel caso delle web app, il canale di comunicazione è internet e il protocollo usato è HTTP. Per scambiare messaggi attraverso questo canale è anche necessario definire il sistema di trasmissione e il linguaggio/formato del messaggio, nel nostro caso useremo il sistema REST e il formato JSON.

#### JSON:

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

#### REST API:

* [Wikipedia](https://it.wikipedia.org/wiki/Representational_State_Transfer)
* [Youtube - REST API concepts and examples](https://www.youtube.com/watch?v=7YcW25PHnAA)

***Consiglio: il video youtube spiega molto bene e da una panoramica sul funzionamento di questo sistema architetturale.***

---

## Strumenti gestione

### Git

Collaborare nella programmazione è fondamentale, per farlo vengono usati dei sistemi chiamati version control system. 

* https://slides.com/gabrielepuliti/git-gitflow
* https://rogerdudler.github.io/git-guide/index.it.html
* https://git-scm.com/book/en/v2

---

## Back-end

Il core di un software è senza alcun dubbio la parte che si mette in mezzo tra il lato client e il database, stiamo parlando di backend. In questo livello si trova l'effettiva implementazione delle logiche di business di un applicativo.

https://it.wikipedia.org/wiki/Front-end_e_back-end

Sicuramente lo stack più comunemente usato per la parte server di una web application è java/spring/maven

### Linguaggi

Linguaggio comunemente usato sia nelle software house che in ambiente accademico, molto flessibile e allo stesso tempo solido. Grazie alla Java Virtual Machine su cui viene eseguito è indipendente dall'hardware su cui viene eseguito.

* Java: 

  * https://www.tutorialspoint.com/java/index.htm
  * https://www.hackerrank.com/domains/java



### Tools

In progetti abbastanza complessi e grandi è necessario avere uno strumento che consenta la gestione delle dipendenze e delle build. Maven è il più famoso e sicuramente uno dei più difficili da comprendere a pieno.

* Maven: https://maven.apache.org/

### Framework

#### Spring

Difficilmente le cose si fanno da zero, per questo esistono i framework, perchè creare qualcosa da zero è a volte troppo complesso soprattutto per creare qualcosa multi materia. Spring è sicuramente il framework più completo per java grazie a spring core e spring boot.


guida ufficiale: https://spring.io/guides:

  * https://spring.io/guides/gs/rest-service/
  * https://spring.io/guides/gs/consuming-rest/
  * https://spring.io/guides/gs/maven/
  * https://spring.io/guides/gs/actuator-service/

Youtube playlist video:

  * https://www.youtube.com/watch?v=msXL2oDexqw&list=PLqq-6Pq4lTTbx8p2oCgcAQGQyqN8XeA1x

---

## Database

La persistenza dei dati in un applicativo, non solo web, è fondamentale. Per mantenere i dati si usano dei database, nel nostro caso principalmente vengono usati i tipi relazionali.

https://it.wikipedia.org/wiki/Modello_relazionale

Le operazioni che possono essere fatte in un database sono 4 e sono definite CRUD: creazione (**C**reate), lettura (**R**ead), aggiornamento (**U**pdate) e cancellazione (**D**elete).

https://en.wikipedia.org/wiki/Create,_read,_update_and_delete

Da notare l'associazione alle chiamate di tipo REST:

  * Create --> Post
  * Read --> Get
  * Update --> Put
  * Delete --> Delete

### Linguaggi

Per eseguire le operazioni CRUD su un database è necessario un linguaggio.

* SQL:

  *  https://www.1keydata.com/it/sql/sintassi-sql.php
  *  https://www.hackerrank.com/domains/sql

---

## Front-end

Tutto ciò che l'utente vede viene generalmente indicato con front-end, questa parola racchiude in se la visualizzazione dei dati che richiediamo al back-end.

### Linguaggi

* HTML: https://www.w3schools.com/html/

* Javascript: https://www.sololearn.com/Course/JavaScript/

### Tools

* nodejs: https://nodejs.org/en/

### Framework

* Angular: https://angular.io/start
