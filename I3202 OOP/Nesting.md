---
tags:
  - oop
locale: en
---

## Nested Classes

### Static

Static nested classes have only access to the static fields and methods of the enclosing class, including private ones.

```java
public class Test {
	// fields...
	public static void testStatic() { }
	public void testInstance() { }
	
	private static class NestedTest {
		// fields...
		public static void nestedStatic() {
			testStatic();
			// testInstance(); no!
		}
		public void nestedInstance() {
			testStatic();
			// testInstance(); no!
		}
	}
}
```

### Inner

Inner nested classes have access to all fields and methods, including static and private ones, of the enclosing class. An inner class is associated with an instance of the the enclosing class.

```java
public class Test {
	// fields...
	public static void testStatic() { }
	public void testInstance() { }
	
	private class InnerTest {
		// fields...
		public static void innerStatic() {
			testStatic();
			// testInstance(); no!
		}
		public void innerInstance() {
			testStatic();
			testInstance();
		}
	}
}
```

### Inside Interfaces

Java offers the ability to nest classes inside interfaces. Despite the oddness of said functionality, it comes especially useful for cases when there is a tight relationship between the two.

```java
interface ITest {
	class Item {
		// fields...
		// methods...
	}
	
	Item getItem();
}
```

## Nested Interfaces

The main purpose of nested interfaces is to resolve the namespace by grouping related interfaces or classes together.

```java
interface Outer {
	interface Inner1 { }
	interface Inner2 { }
}
```

Calling syntax:

```java
Outer.Inner1
```

## Local Declaration

A local class or interface is declared locally within a block of code rather than as a member of a class. Since all blocks of code in Java appear within class definitions, all locally declared classes or interfaces are therefore nested.

This type of local elements can access any members including the private ones. In addition to that, they can also access **local variables**, as long as the latter are declared as `final` or are treated as **effectively final**, meaning their value will never change. This must be true in order to avoid lifetimes complications.

Local classes have the following restrictions:

- Visible only within the block that defines it
- Cannot have an access modifier

```java
// enclosing class
public class Test {
	public Number getNumber() {
		// local nested class
		class TheAnswer {
			private int secret;
			
			public TheAnswer() {
				this.secret = 42;
			}
			
			public int getSecret() {
				return this.secret;
			}
		}
		
		return new TheAnswer().getSecret();
	}
}
```

## Anonymous Classes

Anonymous classes are a special type of [[#Local Declaration|local class]] that allow simultaneous declaration and instantiation. [[🚨]] When they are declared and instantiated, **a parent class is always extended or an interface is always implemented**.

```java
public class Processor {
	private Operation[] ops;
	
	public Processor() {
		addOp(new Operation() {
			@Override
			public int exec() {
				return 42;
			}	
		})
	}
	public void addOp(Operation op) {
		// add operation to ops...
	}
}

interface Operation {
	int exec();
}
```

Anonymous classes **cannot** have constructors though they have access to the methods and field of the object that contains it. They also have access to local variables as long as the are declared [[#Local Declaration|final]].
