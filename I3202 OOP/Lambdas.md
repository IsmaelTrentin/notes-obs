---
tags:
  - oop
locale: en
---

## def

Lambdas inject the functional paradigm into Java, giving us the ability to treat functions as data. With this paradigm we can pass functions as parameters or save them to variables, deferring their execution at a later time.

## Syntax

### Default

```java
@FunctionalInterface
public interface Operation {
	int op(int a, int b);
}

// ...
void addOperation(Operation fn) { /* ... */ }
void main() {
	Operation sumOp = (a, b) -> a + b;
	addOperation(sumOp);
	addOperation((a, b) -> a - b);
}
// ...
```

### Method Reference

This type of syntax enables us to write shorter code by taking advantage of type compatibility.

```java
Class::staticMethod
obj::instanceMethod
Class::instanceMethod // (obj, args) -> obj.instanceMethod(args)
Class::new
```

## Closures 

Closures in java save the value of the needed variables instead of a pointer to the code block like in JavaScript for example. To prevent side effects, Java 