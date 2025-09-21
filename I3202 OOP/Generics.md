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