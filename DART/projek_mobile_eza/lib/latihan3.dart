import 'dart:io';
void main(List<String> args) {
  double? panjang;
  double? lebar;
  stdout.write("Masukkan panjang : ");
  panjang = double.parse(stdin.readLineSync()!);
   stdout.write("Masukkan lebar : ");
  lebar= double.parse(stdin.readLineSync()!);

  double luas = panjang*lebar;
  double keliling = 2*(panjang + lebar);
  print("panjang :$panjang");
  print("lebar : $lebar");
  print("luas : $luas");
  print("keliling :$keliling");

}