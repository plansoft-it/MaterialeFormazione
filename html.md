# HTML

Linguaggio standard per creare pagine web statiche, consiste in una serie di elementi che indicano al browser come presentare i contenuti. 

La nascita di questo linguaggio deriva dagli studi di Tim Berners-Lee e altri studiosi nel 1989. 

Il nome HTML sta per hyper text markup language: Hypertext significa che il documento contiene link che consentono di spostarsi in altre sezioni del documento o in altri documenti. Markup Language è il modo in cui è possibile controllare come il testo del documento è processato e presentato, per fare questo vengono sono utilizzati degli elementi chiamati tag.

## Tag

Gli elementi di cui parliamo consistono in un tag di apertura e uno di chiusura:

```HTML
<tag> contenuto </tag>
```

Una file html è formato da una struttura di questo tipo:

```HTML
<html>

  <head>
  </head>

  <body>
  </body>

</html>
```

### DOCTYPE

Il primo tag che è sempre necessario definire è il DOCTYPE: 

```HTML
<!DOCTYPE html>
<html>
</html>
```

### HEAD & BODY

Il tag HTML conterrà le specifiche e il contenuto della pagina, relativamente definiti dai tag `<head>` e `<body>`.

Il body conterrà altri tag, alcuni dei quali possono essere questi:

* **Headings** `<h1>`, `<h2>`, ..., `<h6>` Utilizzati per la titolazione
* **Links** `<a>` Definisce una parte di testo cliccabile che ridireziona verso l'url definito nel tag
* **Image** `<img>` Creano una sezione della pagina in cui viene visualizzata un'immagine

Ogni tag può contenere degli attributi che definiscono delle opzioni in più rispetto al tag, per esempio il tag `<a>` sarebbe inutile senza definire lo URL nell'opzione href:

```HTML
<a href="https://www.sito.com"> testo da visualizzare </a>
```

Un altro esempio è il tag `<img>` in cui deve essere definito una opzione che indica il percorso dell'immagine:

```HTML
<img src="percorso/immagine.png"></img>
```

Di tag ce ne sono molti, potete trovarne la lista completa a questo link [Mozilla - HTML Element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element).

### Da sapere

* il linguaggio è case insensitive rispetto agli elementi, ma non al contenuto dei tag:

  ```HTML
  <DIV> CONTEnuto </DIV>
  ```

  Viene visualizzato in questo modo:

  <DIV> CONTEnuto </DIV>

  Che ha lo stesso risultato di:

  ```HTML
  <div> CONTEnuto </div>
  ```

  Visualizzato come:

  <div> CONTEnuto </div>
  
* Il valore dato all'attributo può essere assegnato senza l'utilizzo dei doppi apici:

  ```HTML
  <img src=percorso/immagine.png></img>
  ```

  Ma è comunque consigliabile:

  ```HTML
  <img src="percorso/immagine.png"></img>
  ```

* È possibile contenere un tag all'interno di un altro tag, per esempio:
  
  ```HTML
  <strong><a href="http://...">Nome del link</a></strong>
  ```

  Chiudere sempre i tag nell'ordine di apertura, nell'esempio sopra si apre il tag strong e il tag a quindi si deve chiudere per primo a e poi strong.

## HTML5

L'ultima versione di questo linguaggio è l'HTML5, l'introduzione di questa specifica rappresenta uno stravolgimento alle precedenti pratiche.

Il design del linguaggio viene modificato alla radice con l'obiettivo di renderlo più significativo e responsivo cercando di eliminare l'utilizzo di plugins come flash e java.

Nei siti moderni la struttura della pagina ha bisogno di più sezioni, oltre all'header e al main, i tag precedentemente chiamati head e body, vengono introdotti: nav, article, aside, section e footer.

Molte delle feature di design della pagina vengono deprecate a favore dell'utilizzo di css e javascript. La conoscenza dei fogli stile diventa quindi necessaria per poter mantenere e sviluppare web.

Oltre ai contenuti e al design della pagina è necessario poter interagire con i componenti, questo viene gestito da javascript.

## CSS

Il css (Cascading Style Sheets) è nato per rendere le pagine web visivamente più attrattive rispetto alla semplice pagina statica html.

Con questo linguaggio ci è quindi permesso di poter modificare ogni sezione della pagina a nostro piacimento, controllando lo stile e la presentazione degli elementi grafici.

Il css è quindi utilizzabile per modificare banalmente i colori e la grandezza dei titoli oppure anche dei link, ma anche per compiti più complessi come le animazioni. 

La sintassi di questo linguaggio si basa sulla definizioni di regole. Le regole specificano gruppi o stili che devono essere applicati a elementi o gruppi di elementi della pagina.

Un esempio di css è questo:

```css
h1 {
    color: red;
    font-size: 5em;
}
```

<!-- CSS Syntax -->
<!-- https://developer.mozilla.org/en-US/docs/Learn/CSS/First_steps/What_is_CSS -->
