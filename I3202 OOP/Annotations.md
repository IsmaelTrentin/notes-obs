---
tags:
  - oop
locale: en
---

## def

Annotations are a type of syntactic metadata that gives the possibility to mark code elements like methods, fields, parameters, annotations themselves, etc. They do not modify the code's behavior.

```java
@MyAnnotation       // no params
@MyAnnotation("p1") // params
```

### Lifetimes

- compile time
- JVM time
- runtime

`CLASS`: Annotations are to be recorded in the class file by the compiler but need not be retained by the VM at run time.

`RUNTIME`: Annotations are to be recorded in the class file by the compiler and retained by the VM at run time, so they may be read reflectively.

`SOURCE`: Annotations are to be discarded by the compiler.

Default lifetime is `RetentionPolicy.CLASS`.

## Declaration

```java
@Target({ElementType.METHOD}) // where it can be placed
@Retention(RetentionPolicy.RUNTIME) // lifetime
public @interface MyAnnotation {
	String param1();
	int param2() default 0;
	String[] arr() default "";
	// ...
}
```

> If `@Target` is omitted, the annotation can be used on any program element

Fields declared inside of annotations can be of the following types:

- primitive
- String
- ClassT
- enum
- annotation
- array of the preceding types

Usage examples:

```java
@MyAnnotation(param1 = "p1", arr = {"0", "1"}) // long form, can skip optionals
```

To support short form there must be a single field called `value()`:

```java
@Target({ElementType.METHOD}) // where it can be placed
@Retention(RetentionPolicy.RUNTIME) // lifetime
public @interface MyAnnotation {
	String value();
}

// usage
@MyAnnotation("short form")
```

## Type Annotations

Type annotations are used to mark the use of elements. For example:

- `@NonNull` assures that the value will never be null
- `@Positive` assures that the given number will always be positive

