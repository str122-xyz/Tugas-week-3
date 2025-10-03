class Person {
  final String _firstName;
  final String _lastName;
  final String _phone;
  Person(this._firstName, this._lastName, this._phone);
  @override
  toString() {
    return "$_firstName $_lastName $_phone";
  }
}

void main() {
  List<Person> list = [
    Person("Jhonn", "Ganteng", "4043124462"),
    Person("Ilham", "Sombong", "4243124462"),
    Person("Agus", "tus", "4243124444"),
  ];

  print("Not sorted: $list");
  list.sort((a, b) => a._firstName.compareTo(b._firstName));
  print("Sorted by first name: $list");
  list.sort((a, b) => a._firstName.compareTo(b._lastName));
  print("Sorted by last name: $list");

  List<String> buah = ['Strawberry', 'Mangga', 'Apel'];
  print(buah);
  print(buah[1]);

  List campuran = ['Alpukat,321,true'];
  print(campuran);

  List<String> nama = [];

  nama.add("Budi");
  nama.add("Ani");
  nama.add("Cici");
  print("Setelah ditambah: $nama");
  print("Data index ke-1: ${nama[1]}");
  nama[1] = "Andi";
  print("Setelah diubah index 1: $nama");
  nama.removeAt(0);
  print("Setelah hapus index 0: $nama");
}
