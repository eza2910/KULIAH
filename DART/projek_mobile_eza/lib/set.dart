void main(List <String> args) {
  Set<int> angka = {1,2,3,4,5};
  
  print (angka.add(6));
  print (angka);
  print(angka.length);
  print(angka.remove(3));
  print (angka.contains(4));
  print (angka.contains(3));
  //angka.clear (); untuk hapsus semua isi set
  print (angka.toList().runtimeType);
  

}