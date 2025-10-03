class Mobil {
  String merk;
  int tahun;
  Mobil(this.merk, this.tahun);
  void info() {
    print('Mobil: $merk, Tahun: $tahun');
  }
}

class Car {
  String color;
  int price;
  int km;
  String model;
  Car({
    required this.color,
    required this.price,
    required this.km,
    required this.model,
  });
  void start() => print('$model started');
  void forward() => print('$model moving forward');
  void backward() => print('$model moving backward');
  void stop() => print('$model stopped');
  @override
  String toString() => 'Car(color:$color, price:$price, km:$km, model:$model)';
}

void main() {
  //Eksekusi Kelas Mobil 1
  print("=== Ingpo Mobil ===");
  var avanza = Mobil('Toyota Supra Mk4', 2001);
  avanza.info();
  print("=======================");

  //Eksekusi Kelas Mobil 2
  print("=== Gasken cuk ===");
  final myCar = Car(color: 'black', price: 22000, km: 1500, model: 'Bmw');
  print(myCar);
  myCar.start();
  myCar.forward();
  myCar.stop();
  print("=======================");
}
