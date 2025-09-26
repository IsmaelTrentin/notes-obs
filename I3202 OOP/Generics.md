---
tags: oop
locale: en
---

## Def

Generics offer a type parametrization on classes or methods using the diamond syntax `<TypeLabel>`.

Class example:

```java
public class Coordinate<T> {
	private T x;
	private T y;
	private T z;
	
	public Coordinate(T x, T y, T z) {
		// ...
	}
	
	public T getX() {
		return this.x;
	}
	
	// ...
}
```

Method example:

```java
public static <T> T addAndReturn(T el, Collection<T> coll) { /* ... */ }
```

If inference fails:

```java
TestClass.<String>addAndReturn(stringEl, stringList);
```

### RAW Types

Generic classes can be used without their type parametrization and will automatically infer the type as Object. This mode of usage is called RAW type.

```java
Coordinate<Integer> c = new Coordinate<>(1, 2, 3);
Coordinate cr = new Coordinate(1, 2, 3); // RAW type
int x = (Integer) cr.getX(); // bad
```

## Bounded Type Parameters

Type parameters can be limited to narrow down the compatibility of the specified type parameter. Bounded type parameters offer only upper bound limitation.

All the following rules apply to methods type parameters too.

```java
public class Coordinate<T extends Number> {
	
	private T t;
	// ...
	public void performOp() {
		// the compiler now as context on what T guarantees as a type
		double val = t.doubleValue();
	}
}
```

With multiple types:

```java
// interface B {}
// class A {}
public class C<T extends A & B> { /* ... */ }
```

With composite bound:

```java
public static <T extends Comparable<T>> int countGT(T[] arr, T el) {
	int count = 0;
	for(T e : arr) {
		if(e.compareTo(el) > 0) {
			++count;
		}
	}
	return count;
}
```

## Wildcards

Wildcards use the same `extends` keyword but has different meaning: 

- extends removes input context 
- super removes output context

> Producer Extends, Consumer Super

It is different from generic classes or methods because it does not make them generic. It simply introduces flexibility on compatibility between types.

#### Upper bounded

If `A` extends `B` and we have a generic type `G<T>`, then `G<A>` is compatible with `G<? extends B>`.

Compatible from X -> end for hierarchy (leaves).

#### Lower bounded

If `A` is a parent of `B` and we have a generic type `G<T>`, then `G<B>` is compatible `G<? super A>`.

Compatible from X -> start of hierarchy (root).

#### Unbounded

Removes all context therefore all operations are blocked. Example `List<?>`.