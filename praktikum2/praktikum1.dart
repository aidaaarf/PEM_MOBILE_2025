// Ubah kode pada langkah 1 menjadi variabel final yang mempunyai indeks = 5 dengan default value = null. Isilah nama dan NIM Anda pada elemen index ke-1 dan ke-2. Lalu print dan capture hasilnya.

void main() {
  final List<dynamic?> list = List.filled(5, null);

  list[1] = "Aida Rahma Fadhila";
  list[2] = "2341720094";

  print(list);
}
