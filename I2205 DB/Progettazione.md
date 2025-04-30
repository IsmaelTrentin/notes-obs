---
tags:
  - db
lang: en
---

- requisiti -> analisi removes interpretazione
- requisiti funzionali -> operazioni sul db (interattive o batch)

## Analisi Requisiti

- astrazione
- standardizzazione struttura frasi
- evitare complessita'
- semplificare sinonimi / standardizzare termini
- glossario
- raggruppare per riferimento

## ER

RECT -> entity set
ELLIPSE -> entity set's attribute
-> composite
-> double: multiple values
-> dashed: derived (ie. age)
^ can stack (comp. & double)

if attr is enum -> attr becomes entity with attr name and gets related to entity that should have said attr
enum is ok only for values that will never change

## Cardinalities

N: ⎯
1: ➝
partecipazione totale (deve avere ass): ====
partecipazione parziale (ass non obbligatoria): default

when attr on ass. that has N:1 or 1:N attr can shift to ES cuz it would be just a single entry anyways

## Keys

id
superkey: group of keys (composite)
primary key: best candidate. underlined in ER
existance dependence: must be n(total)-1, n(total) double rect and key dashed underline, relationship double rect

## Specializzazione

upside down triangle and put each child under. each child has specific attributes.
main branch to ES can be double line (total participation)

svorapposizione: entita' puo' appartenere a piu' ES
disgiunzione: entita' appartiene solamente ad un ES
