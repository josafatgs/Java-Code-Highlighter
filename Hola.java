import java.util.Scanner;
import java.util.*;

abstract class Animal {
  public abstract void animalSound();
  public void sleep() {
    System.out.println("Zzz");
  }
}

// interface
interface MyAnimal {
  public void animalSound(); // interface method (does not have a body)
  public void sleep(); // interface method (does not have a body)
}

// Pig "implements" the Animal interface
class Pig implements MyAnimal {
  public void animalSound() {
    // The body of animalSound() is provided here
    System.out.println("The pig says: wee wee");
  }
  public void sleep() {
    // The body of sleep() is provided here
    System.out.println("Zzz");
  }
}

class Vehicle {
  protected String brand = "Ford";        // Vehicle attribute
  public void honk() {                    // Vehicle method
    System.out.println("Tuut, tuut!");
  }
}

class Car extends Vehicle {
  private String modelName = "Mustang";    // Car attribute
  public static void main(String[] args) {

    // Create a myCar object
    Car myCar = new Car();

    // Call the honk() method (from the Vehicle class) on the myCar object
    myCar.honk();

    // Display the value of the brand attribute (from the Vehicle class) and the value of the modelName from the Car class
    System.out.println(myCar.brand + " " + myCar.modelName);
  }
}

public class Hola {
  public static void first(String[] args) {

    int registrado = (((8 + 1) - 5) / 6) * 1;
    String myname = "Josafat";
    int myName = 8;
    char myame = 'k';
    float reGistrado = 8.9f;
    boolean reGistRado = true;

    registrado += 1;
    registrado -= 1;
    registrado *= 1;
    registrado /= 1;
    registrado %= 1;
    registrado &= 1;
    registrado |= 1;
    registrado ^= 1;
    registrado >>= 1;  //Potencia (Valor)*2¹  
    registrado <<= 1;  //Dividir  (Valor)/2¹

    registrado --;
    registrado ++;
    registrado = registrado % 2;

    int binario = 0b1010;
    int octal = 012;
    int hexadecimal = 0xA;
    int character = '\u0000';

    System.out.println("Hello \" Esto tambien es parte del string\" World");//This \' is a comment 1
    System.out.println("Hello\n 'Hola' Josafat");
    //This is a comment 2
    /*This Is Another Type 
    asdas
    sda
    of Comment*/

    if (reGistRado) {
      System.out.println("Hello \n Guys!");
    } else if (!reGistRado) {
      System.out.println("Game Over");
    } else {
      System.out.println("Its Okey");
    }

    String result = (1 < 18) ? "Good day." : "Good evening.";

  }

  public static void second(String[] args) {
    int myInt = 9;
    double myDouble = myInt; // Automatic casting: int to double

    System.out.println(myInt);      // Outputs 9
    System.out.println(myDouble);   // Outputs 9.0

    for (int i = 0; i < 5; i++) {
      System.out.println(i);
    }

    int[] myNum = {10, 20, 30, 40};

    int[][] myNumbers = { {1, 2, 3, 4}, {5, 6, 7} };
  }

  public static void third(String[] args) {
    double myDouble = 9.78d;
    int myInt = (int) myDouble; // Manual casting: double to int

    System.out.println(myDouble);   // Outputs 9.78
    System.out.println(myInt);      // Outputs 9

    int i = 0;

    do {
      System.out.println(i);
      i++;
    }
    while (i < 5);

    int day = 4;
    switch (day) {
      case 1:
        System.out.println("Monday");
        break;
      case 2:
        System.out.println("Tuesday");
        break;
      case 3:
        System.out.println("Wednesday");
        break;
      case 4:
        System.out.println("Thursday");
        break;
      case 5:
        System.out.println("Friday");
        break;
      case 6:
        System.out.println("Saturday");
        break;
      case 7:
        System.out.println("Sunday");
        break;
    }
    // Outputs "Thursday" (day 4)

    i = 0;
    while (i < 10) {
      if (i == 4) {
        i++;
        continue;
      }
      System.out.println(i);
      i++;
    }

    try {
      int[] myNumbers = {1, 2, 3};
      System.out.println(myNumbers[10]);
    } catch (Exception e) {
      System.out.println("Something went wrong.");
    }
  }

  public class Person {
    private String name; // private = restricted access
  
    // Getter
    public String getName() {
      return name;
    }
  
    // Setter
    public void setName(String newName) {
      this.name = newName;
    }
  }


  
}
