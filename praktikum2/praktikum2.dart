// Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.
// Apa yang terjadi ? Jika terjadi error, silakan perbaiki namun tetap menggunakan ketiga variabel tersebut.
//Tambahkan elemen nama dan NIM Anda pada kedua variabel Set tersebut dengan dua fungsi berbeda yaitu .add() dan .addAll().
//Untuk variabel Map dihapus, nanti kita coba di praktikum selanjutnya.

void main() {
  var names1 = <String>{};
  Set<String> names2 = {};
  var names3 = {};

  names1.add("Aida Rahma Fadhila");
  names1.add("2341720094");

  names2.addAll({"Aida Rahma", "123456789"});

  print("names1 (Set): $names1");
  print("names2 (Set): $names2");
  print("names3 (Map): $names3");
}
