---
tags:
  - db
lang:
  - it
---

Ristrutturazione ER:

- analisi ridondanze
- rimozione generalizzazioni 
- rimozione attr multi val
- partitioning/merging entita' e relazioni 
- selezione primary key

## Generalizzazioni

collapse to master
add type attr to differentiate between types
if child has =<>-> then it becomes -<>->

collapse to children
attrs and relationships (1child->1relationship)
se spec is totale: children collapse ok
se sepc is parziale: children collapse NOT ok
sost relazioni
child -> weak entity set
if child needs to be of master then master=>child

## Multival

create ES and |target|<--<>\==|attr|

## Design

N-N becomes a table

when =<>-> has attr: attr collapses on the ES where = exists (in this case left)