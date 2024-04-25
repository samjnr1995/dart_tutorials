void main() {
  Square square = Square();
  square.area(5);
  square.perimeter();
  Circle circle = Circle();
  circle.base(10);

}
// abstract class helps in Enforcing Method Implementation
// code reusability
//polymorphism: the ability of methods to change it forms
//while doing this i noticed that its compulsory for child classes to implement all methods in the abstract class
abstract class Shape { //
  double area(double rad);
  double perimeter();
}

mixin parameters{
  double length = 10;
  double breath = 12;  // here is an example of mixin. it enhances code reusability, i have been able to define a mixin class
                       // and all my subclasses can use it properties even it methods
  double radius = 10;  // a class can inherit from many mixins which is a limitation in inheritance by using comma and followed by mixin name
  void base(double height){
    print('the height is $height');
  }
}
class Circle extends Shape with parameters {
  @override
  double area(rad) => rad *3.14 * radius;
  @override
  double perimeter() => length * breath;
}

class Square extends Shape with parameters{
  @override
  double area(rad) =>rad * length * breath.toDouble();
  @override
  double perimeter( ) => length * breath;
}

class Data {
  int igb = 2000;
  int airtime = 200;
  total(int value) {
    var result = igb + airtime;
    var total = result + value; // inheritance: since i have extended the data class i can inherit thr total function
    // no need to create again
    print(total);
  }
}
