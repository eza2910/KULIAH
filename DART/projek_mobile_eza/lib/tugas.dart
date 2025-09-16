import 'dart:io';

void main(List<String> args) {
  String? nama;
  int? jamKerjaPerMinggu;
  double? upahPerJam;
  bool? statusKaryawan;
  double gajiBersih;

  stdout.write("Masukkan Nama : ");
  nama = stdin.readLineSync();

  stdout.write("Jam kerja per minggu : ");
  jamKerjaPerMinggu = int.parse(stdin.readLineSync()!);

  stdout.write("Upah per jam : ");
  upahPerJam = double.parse(stdin.readLineSync()!);

  stdout.write("Status karyawan (tetap/kontrak) : ");
  String? inputStatus = stdin.readLineSync();
  if (inputStatus != null && inputStatus.toLowerCase() == "tetap") {
    statusKaryawan = true;
  } else {
    statusKaryawan = false;
  }
  if (statusKaryawan==true){
    print("dikenakan pajak 10%");
    } else {
      print("dikenakan pajak 5%");
    }
  
  double gajiKotor = jamKerjaPerMinggu * upahPerJam;
  if (statusKaryawan == true) {
    gajiBersih = gajiKotor * 0.90; 
  } else {
    gajiBersih = gajiKotor * 0.95; 
  }

  print("\n--- Slip Gaji ---");
  print("Nama: $nama");
  print("Jam kerja per minggu: $jamKerjaPerMinggu");
  print("Upah per jam: Rp$upahPerJam");
  print("Status karyawan: ${statusKaryawan ? "Tetap" : "Kontrak"}");
  print("Gaji Kotor: Rp$gajiKotor");
  print("Gaji Bersih (setelah pajak): Rp$gajiBersih");
}
