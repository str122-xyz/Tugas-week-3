enum Status { pending, success, failed }

void main() {
  //set
  var angka = {1, 2, 3};
  print("Set awal: $angka");

  angka.addAll({4, 5, 6, 7, 8, 9, 10});
  print("Set setelah penambahan: $angka");
  print("---");

  //map
  Map<String, String> user = {
    'id': '067',
    'nama': 'Jhonn',
    'email': 'jhonn@mail.com',
  };
  print(user['nama']);
  user['email'] = 'jhonn@example.com';
  print(user);

  List<String> products = ["Pencil", "Bulpoint", "Penghapus"];
  print("Produk Tersedia: $products");
  print("---");

  Map<String, Object> productsElectric = {
    'id': '001',
    'name': 'Handphone',
    'price': 8000000,
  };
  print("Nama Produk: ${productsElectric['name']}");

  productsElectric['price'] = 7000000; // update value
  print("Data produk setelah update harga $productsElectric");
  print("---");

  final Map<String, dynamic> pengguna = {
    'id': 1,
    'name': 'Budi01Gaming',
    'address': {
      'city': 'Bekasi',
      'geo': {'lat': -8.65, 'lng': 115.22},
    },
  };
  print(pengguna['address']['geo']['lat']);

  //object
  Object data1 = 'Hello World';
  Object data2 = 123;
  Object data3 = true;
  print(data1); // Hello
  print(data2); // 123
  print(data3); // true

  //enum
  var orderStatus = Status.success;
  switch (orderStatus) {
    case Status.pending:
      print("Pesanan dalam proses");
      break;
    case Status.success:
      print("Pesanan berhasil!");
      break;
    case Status.failed:
      print("Pesanan gagal.");
      break;
  }
}
