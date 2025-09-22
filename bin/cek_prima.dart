import 'dart:io';

void main() {
  stdout.write("Masukkan sebuah angka: ");
  int angka = int.parse(stdin.readLineSync()!);

  if (angka < 2) {
    print("$angka bukan bilangan prima");
    return;
  }

  bool prima = true;
  for (int i = 2; i <= angka ~/ 2; i++) {
    if (angka % i == 0) {
      prima = false;
      break;
    }
  }

  if (prima) {
    print("$angka adalah bilangan prima");
  } else {
    print("$angka bukan bilangan prima");
  }
}
