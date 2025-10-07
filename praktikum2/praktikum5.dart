void main() {
  (String, String, {int a, bool b}) tukar(
    (String, String, {int a, bool b}) record,
  ) {
    var (x, y, :a, :b) = record;
    return (y, x, a: a, b: b);
  }

  var record = ('first', 'last', a: 2, b: true);
  print("Sebelum tukar: $record");

  var hasil = tukar(record);
  print("Sesudah tukar: $hasil");

  //mahasiswa
  (String, int) mahasiswa = ('Aida Rahma', 2341720094);

  print("\nData Mahasiswa: $mahasiswa");
  print("Nama : ${mahasiswa.$1}");
  print("NIM  : ${mahasiswa.$2}");

  var mahasiswa2 = ('Aida Rahma', 2341720094, a: true, b: 'Mahasiswi');

  print(mahasiswa2.$1); 
  print(mahasiswa2.$2);
  print(mahasiswa2.a);   
  print(mahasiswa2.b);  
}
