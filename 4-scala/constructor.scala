class Person(firstName: String) {

  println("Outer constructor")

  def this(firstName: String, lastName: String) {
    this(firstName)
    println("Inner constructor")
  }

  def talk = println("hi!")

}

val paul = new Person("Paul")
println("---")
val pietro = new Person("Pietro", "Grandi")
