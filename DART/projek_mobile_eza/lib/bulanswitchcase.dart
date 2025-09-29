import 'dart:io';
void main(){
  int ? bulan ;
   stdout.write("Masukkan bulan ke brp : ");
  bulan = int.parse(stdin.readLineSync()!);

  switch (bulan) {
    case 1:
      print("januari");
      break;
    case 2:
      print('februari');
      break;
    case 3:
      print('maret');
      break;
    case 4:
      print('april');
      break;
    case 5:
      print('mei');
      break;
    case 6:
      print('juni');
      break;
    case 7:
      print('juli');
      break;
    case 8:
      print('agustus');
      break;
    case 9:
      print('september');
      break;
    case 10:
      print('oktober');
      break;
    case 11:
      print('november');
      break;
    case 12:
      print('desember');
      break;
    default:
      print('kabur jo ngana');
  }
}