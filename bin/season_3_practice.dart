class Mahasiswa {
  String nama;
  int umur;

  Mahasiswa(this.nama, this.umur);

  // Method
  void perkenalan() {
    print('Halo, saya $nama, umur $umur tahun');
  }
}

void main() {
  print("Hello World");
  var mhs = Mahasiswa('Jhonn', 18);
  mhs.perkenalan();
}
