
mixin Flyable{
 void fly(String name){
   print("$name : This is a flyable");
 }
}

mixin Drivable{
  void drive(String name){
    print("$name : This is a drivable");
  }
}
class Car with Drivable{
  @override
  void drive(String name){
    super.drive(name);
  }



}
class AirPlane with Drivable,Flyable{
  @override
  void drive(String name){
    super.drive(name);
  }


  @override
  void fly(String name) {
     super.fly(name);
    }
}

void main(){
  Car c1= Car();
  c1.drive("Audi");
  AirPlane a1= AirPlane();
  a1.drive("F12");
  a1.fly("F12");




}