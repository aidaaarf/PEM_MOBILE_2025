void main() {
  String nama = "Aida Rahma Fadhila";
  String nim = "2341720094";

  int angka = 0; 

  do {
    if (isPrima(angka)) {
      print("$angka adalah bilangan prima");
      print("$nama");
      print("$nim\n");
    }
    angka++; 
  } while (angka <= 201); 
}

bool isPrima(int n) {
  if (n < 2) return false; 
  for (int i = 2; i * i <= n; i++) {
    if (n % i == 0) return false;
  }
  return true;
}
