import 'dart:io';


class Mahasiswa {
  String nim;
  String nama;
  String jurusan;
  int angkatan;

  Mahasiswa(this.nim, this.nama, this.jurusan, this.angkatan);

  void tampilkanDetail() {
    print("==== Detail Mahasiswa ====");
    print("NIM     : $nim");
    print("Nama    : $nama");
    print("Jurusan : $jurusan");
    print("Angkatan: $angkatan");
    print("==========================");
  }
}

void main() {
  List<Mahasiswa> daftarMahasiswa = [];

  print("=== Entry Data Mahasiswa (minimal 10) ===");
  for (int i = 0; i < 10; i++) {
    stdout.write("Masukkan NIM        : ");
    String nim = stdin.readLineSync()!;
    stdout.write("Masukkan Nama       : ");
    String nama = stdin.readLineSync()!;
    stdout.write("Masukkan Jurusan    : ");
    String jurusan = stdin.readLineSync()!;
    stdout.write("Masukkan Angkatan   : ");
    int angkatan = int.parse(stdin.readLineSync()!);

    daftarMahasiswa.add(Mahasiswa(nim, nama, jurusan, angkatan));
    print("Data mahasiswa berhasil ditambahkan!\n");
  }

  print("\n=== Pencarian Data Mahasiswa ===");
  stdout.write("Masukkan NIM yang ingin dicari: ");
  String cariNim = stdin.readLineSync()!;

  Mahasiswa? hasil = daftarMahasiswa.firstWhere(
    (m) => m.nim == cariNim,
    orElse: () => Mahasiswa("", "", "", 0),
  );

  if (hasil.nim != "") {
    hasil.tampilkanDetail();
  } else {
    print("Data mahasiswa dengan NIM $cariNim tidak ditemukan.");
  }
}
