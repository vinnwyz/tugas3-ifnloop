import 'dart:io';
import 'dart:math';
void main(){
  
  var jalan=true;

void nama(){
  print('NAMA  : Kevin\nNPM   : 25421879\nKELAS : 3A');
}  
void tampilmenu(){
  print('====================================================');
  print('                   Tugas 2');
  print('====================================================');
  print('1.Nilai huruf dari angka 1-100\n2.Bilangan 1-20 menjadi fizz,buzz,fizzbuzz\n3.hitung 5 inputan angka\n4.game tebak angka 0-5\n5.tentang pembuat program\n6.keluar');
}
void keluar(){
  exit(0);
}
void validasi(){
  while (jalan==false) {
    stdout.write('apakah anda ingin melanjutkan program ? Y/N :');
    var inputval = stdin.readLineSync()?? '';
    if (inputval == 'Y') {
      jalan = true;
    }else if(inputval == 'N'){
      exit(0);
    }
  }
}

  
void huruf(){
  var nilai;
   
  stdout.write('Masukan Angka Anda:');
  var angka = stdin.readLineSync()!;

  if (double.parse(angka)<0){
    print('angka $angka diluar angka 0-100 !');
  }else if(double.parse(angka)>100) {
    print('angka $angka diluar angka 0-100 !');
  } else if (double.parse(angka)>84){
    nilai = 'A';
    print ('nilai = $nilai');
  }else if(double.parse(angka)>69){
    nilai = 'B';
    print ('nilai = $nilai');
  }else if(double.parse(angka)>54){
    nilai = 'C';
    print ('nilai = $nilai');
  }else if(double.parse(angka)>-1){
    nilai = 'D';
    print ('nilai = $nilai');
  }
}
  

void bilangan20(){
  int a=1;

  for (var i = 0; i < 20; i++) {
    if (a%3==0 && a%5==0){
      print('FizzBuzz');
    }else if(a%3==0){
      print('Fizz');
    }else if(a%5==0){
      print('Buzz');
    }else {
      print(a);
    }
    a++;
    
  }
}
  
void angkainput(){
  List<double> angka = []; 
  for (var i = 0; i < 5; i++) {
    stdout.write('Masukkan angka ${i+1} : ');
    double? input=double.parse(stdin.readLineSync() ?? '');
    while (input==null) {
      stdout.write('input tidak valid ! Masukkan angka ${i+1} : ');
      input = double.parse(stdin.readLineSync() ?? '');

    }
    angka.add(input);
  }
  double jumlah=0, rata=0, min=angka[0], max=angka[0];

  for (var i = 0; i < angka.length; i++) {
    jumlah = jumlah + angka[i];
    if (angka[i] > max){
      max = angka[i];
      
    }
    if (angka[i] < min){
      min = angka[i];
    }
  }
  rata = jumlah/angka.length;

  print ('--------------------------------\nHasil perhitungan dari 5 inputan yaitu:\npenjumlahan : $jumlah\nrata-rata :  $rata\nnilai minimum : $min\nnilai maximum : $max');

}

void random(){
  var random = Random();
  int angkaRandom = random.nextInt(6);
  int? angkaTebakan;
  int percobaan=0;

  while (angkaTebakan != angkaRandom) {
    stdout.write('Tebak angka 0-5 : ');
    String? input = stdin.readLineSync();
    angkaTebakan = int.parse(input ?? '');
    percobaan++;

    if (angkaTebakan > angkaRandom){
      print ('angka inputan terlalu besar');
    } else if(angkaTebakan < angkaRandom ){
      print('angka inputan terlalu kecil');
    }else {
      print('Benar !');
    }
  }
  print ('Selamat anda berhasil menebak angka random yaitu $angkaRandom dengan jumlah percoban $percobaan kali');
    
}
  while(jalan==true){
    tampilmenu();
    stdout.write('Pilih menu :');
    var input = stdin.readLineSync()!;
    switch (input) {
      case '1':
        huruf();
        jalan=false;
        validasi();
        break;
      case '2':
        bilangan20();
        jalan=false;
        validasi();
      case '3':
        angkainput();
        jalan=false;
        validasi();
      case '4':
        random();
        jalan=false;
        validasi();
      case '5':
        nama();
        jalan=false;
        validasi();
      case '6':
        keluar();
      default:
    }
  }
}

