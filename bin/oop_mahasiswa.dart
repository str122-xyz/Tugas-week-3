abstract class Pendaftaran {
  void daftarMatkul(String matkul);
}

class Mahasiswa {
  String nama;
  String nim;
  String jurusan;
  int angkatan;

  Mahasiswa({
    required this.nama,
    required this.nim,
    required this.jurusan,
    required this.angkatan,
  });

  void tampilkanData() {
    print("Nama     : $nama");
    print("NIM      : $nim");
    print("Jurusan  : $jurusan");
    print("Angkatan : $angkatan");
  }
}

class AsistenDosen extends Mahasiswa {
  final String mataKuliah;

  AsistenDosen({
    required String nama,
    required String nim,
    required String jurusan,
    required int angkatan,
    required this.mataKuliah,
  }) : super(nama: nama, nim: nim, jurusan: jurusan, angkatan: angkatan);

  @override
  void tampilkanData() {
    super.tampilkanData();
    print("Asisten MK: $mataKuliah");
  }
}

class MahasiswaAktif extends Mahasiswa implements Pendaftaran {
  final List<String> _matkulDiambil = [];
  List<String> get matkulDiambil => _matkulDiambil;

  MahasiswaAktif({
    required super.nama,
    required super.nim,
    required super.jurusan,
    required super.angkatan,
  });

  @override
  void daftarMatkul(String matkul) {
    _matkulDiambil.add(matkul);
    print("$nama berhasil daftar matakuliah $matkul");
  }

  @override
  void tampilkanData() {
    super.tampilkanData();
    if (_matkulDiambil.isNotEmpty) {
      print("Matakuliah Diambil: ${_matkulDiambil.join(', ')}");
    } else {
      print("Belum mengambil matakuliah.");
    }
  }
}

void main() {
  var mhs1 = Mahasiswa(
    nama: "Jhonn Heisenberg",
    nim: "112315123",
    jurusan: "Teknik Kimia",
    angkatan: 2023,
  );
  print("--- Mahasiswa Biasa aja ---");
  mhs1.tampilkanData();
  print("-----------------------");

  var asdos = AsistenDosen(
    nama: "Maimunah",
    nim: "1210293241",
    jurusan: "Teknik Informatika",
    angkatan: 2022,
    mataKuliah: "Pemrograman Mobile",
  );
  print("--- Asisten Dosen ---");
  asdos.tampilkanData();
  print("---------------------");

  // Mahasiswa aktif implementasi interface
  var mhs2 = MahasiswaAktif(
    nama: "Agus jayadi",
    nim: "11234444",
    jurusan: "Teknik Elektro",
    angkatan: 2021,
  );
  mhs2.daftarMatkul("Perangkat Elektronik");
  mhs2.daftarMatkul("Robotika");
  mhs2.tampilkanData();
  print("Matkul yang diambil: ${mhs2.matkulDiambil}");
}
