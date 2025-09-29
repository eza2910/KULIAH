import 'dart:io';
void main(){
  int ? nilai ;
   stdout.write("Masukkan nilai kamu: ");
  nilai = int.parse(stdin.readLineSync()!);
  if (nilai>=85 && nilai <=100) {
    print("Nilai A");
  }else if (nilai >= 70 && nilai < 84) {
    print('nilai B');
  }else if (nilai >= 60 && nilai < 69) {
    print('nilai C');
  }else if (nilai >= 50 && nilai < 59) {
    print('nilai D');
  }else{
    print('nilai E');
  }
}