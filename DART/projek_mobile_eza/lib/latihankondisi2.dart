import 'dart:io';
void main(){
  int ? umur ;
   stdout.write("Masukkan umur : ");
  umur = int.parse(stdin.readLineSync()!);

  switch (umur) {
    case >= 0 && <13:
      print("anda termasuk kategori anak-anak");
      break;
    case >= 13 && <18:
      print('anda termasuk kategori remaja');
      break;
    case >= 18 && <60:
      print('anda termasuk kategori dewasa');
      break;
    case >=60:
      print('anda termasuk kategori lansia');
      break;
    default:
      print('kabur jo ngana');
  }
}