
```text
MyClass.class
myInstance.getClass()
Class.forName("package.ClassName")

int i = 42;
i.getClass() -> DOES NOT WORK
do: int.class or Integer.TYPE
```

```java
Class<String> c = String.class;
Class<? extends String> c = "".getClass();
Class<?> c = Class.forName("java.lang.String");
```


[[🚨]]

```java
Person person0 = new Person();
Person person1 = new Student();
Class<? extends Person> class0 = person0.getClass();
Class<? extends Person> class1 = person1.getClass();
System.out.println(class0.equals(class1)); // false!
```

Arrays:

```txt
Class.forName("[D") -> array of doubles
Class.forName("[[J") -> matrix of longs
...
```

## Fields and Methods

`getFields` returns all **public** fields including the ones from superclasses (all the tree) and interfaces.

`getDeclaredFields` returns all fields in the specified class ignoring the access modifier.

same rules apply for methods.

To access private fields or invoke private methods and methods use `target.setAccessible(true)` before accessing or calling.

To all static methods use `reflectedMethod.invoke(null)`.

## Constructors and Instances

To get all constructors: `MyClass.getDeclaredConstructor()` with this method we are sure that any error is wrapped inside `InvocationTargetException` and that we can also call private ctors under some circumstances.

To create new instances: `MyClass.getDeclaredConstructor().newInstance(...args)`.

## Inheritance

To obtain the extended class, `Class<T>` offers the `getSuperclass()` method. To obtain the implemented interfaces, the `getInterfaces()` method can be used.

Due to compile-time erasure, `getSuperclass()` and `getInterfaces()` do not provide generic parameters. To address this limitation, `getGenericSuperclass()` and `getGenericInterfaces()` are provided, which offer additional support for generic types.

`getDeclaringClass` called on fields, methods and ctors returns the declaring class `Class<T>` but returns `null` for local or anonymous declared classes. To get a result on classes we must use `getEnclosingClass`, which returns the enclosing class' `Class<T>` of our invoker.