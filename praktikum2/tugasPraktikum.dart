// 1. Jelaskan yang dimaksud Functions dalam bahasa Dart!
//    JAWAB: Function adalah sebuah blok kode yang dapat dipanggil untuk menjalankan instruksi
  void sapa(String nama) {
  print("Halo, $nama!");
}
  void main() {
    sapa("Aida");
  }

// 2. Jelaskan jenis-jenis parameter di Functions beserta contoh sintaksnya!
//    JAWAB: 
//            a). Positional Parameter => Parameter yang wajib diisi sesuai urutan.
                      void tambah(int a, int b) {
                        print(a + b);
                      }

                      void main() {
                        tambah(3, 5); // Output: 8
                      }

//             b). Optional Positional Parameter => Diberi tanda [ ]. Bisa kosong, bisa diberi default value.
                      void sapa(String nama, [String? pesan = "Selamat datang"]) {
                        print("$pesan, $nama!");
                      }

                      void main() {
                        sapa("Aida");             
                        sapa("Aida", "Hai"); 
                      }
//             c). Named Parameter => Diberi tanda { }. Lebih jelas karena dipanggil dengan nama. Bisa ditandai required atau punya default.
                      void biodata({required String nama, int umur = 18}) {
                        print("Nama: $nama, Umur: $umur");
                      }

                      void main() {
                        biodata(nama: "Aida"); // Nama: Aida, Umur: 18
                      }

// 3. Jelaskan maksud Functions sebagai first-class objects beserta contoh sintaknya!
//    JAWAB: Function di Dart diperlakukan sebagai nilai, bisa disimpan di variabel, dikirim sebagai parameter, atau dikembalikan dari function lain.
              void cetakPesan(String msg) {
                print(msg);
              }

              void runFunction(void Function(String) fn, String pesan) {
                fn(pesan);
              }

              void main() {
                var f = cetakPesan;   // Simpan fungsi ke variabel
                f("Halo Aida!");      // Output: Halo Aida!

                runFunction(cetakPesan, "Ini dipanggil lewat parameter function");
              }

// 4. Apa itu Anonymous Functions? Jelaskan dan berikan contohnya!
//   JAWAB: Anonymous function = function tanpa nama, biasa dipakai sebagai argumen function lain, atau fungsi sekali pakai.
            void main() {
            var list = [1, 2, 3];
            list.forEach((item) {
              print("Item: $item");
            });
          }

// 5. Jelaskan perbedaan Lexical scope dan Lexical closures! Berikan contohnya!
//    JAWAB: 
//            a). Lexical Scope => Lingkup variabel ditentukan oleh posisi variabel dalam kode, bukan saat runtime.
                  void main() {
                    var x = 10;
                    void tampilkan() {
                      print(x); 
                    }
                    tampilkan(); // Output: 10
                  }
//            b). Lexical Closure = function yang menyimpan referensi ke variabel di scope luarnya.
                  Function buatCounter() {
                    var hitung = 0;
                    return () {
                      hitung++;
                      return hitung;
                    };
                  }

                  void main() {
                    var counter1 = buatCounter();
                    print(counter1()); // 1
                    print(counter1()); // 2
                    print(counter1()); // 3
                  }

// 6. Jelaskan dengan contoh cara membuat return multiple value di Functions!
//    JAWAB: Dart tidak bisa return banyak nilai sekaligus secara langsung, tapi bisa pakai list, map, record
      (String, int) getMahasiswa() {
        return ("Aida Rahma", 23456789);
      }

      void main() {
        var (nama, nim) = getMahasiswa();
        print("Nama: $nama, NIM: $nim");
      }






