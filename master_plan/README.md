# master_plan

TUGAS PRAKTIKUM 1: Dasar State dengan Model-View
![ScreenRecord Dasar State](images/praktikum1_state.gif)

* Maksud dari langkah 4 adalah untuk membuat barrel file
(barrel file = file yang mengumpulkan dan mengekspor beberapa file dari satu tempat)
Tujuan membuat barrel file untuk membuat satu file yang mengekspor seluruh model data, sehingga proses import lebih ringkas, terpusat, dan mudah dikelola seiring aplikasi tumbuh.

* Mengapa perlu variabel plan di langkah 6 pada praktikum tersebut? Mengapa dibuat konstanta ?
Karena halaman PlanScreen memerlukan tempat untuk menyimpan dan mengelola data rencana (list task) yang akan ditampilkan di UI.
Mengapa plan dibuat sebagai const?
Untuk efisiensi memori
Karena model Plan bersifat immutable atau dimaksudkan untuk immutable
Agar state awal aman dan tidak berubah secara tidak sengaja
Menghindari pembuatan instance yang tidak perlu

* Apa kegunaan method pada Langkah 11 dan 13 dalam lifecyle state ?
Kegunaan initState() adalah untuk ,
Menginisialisasi scrollController ,
Menambah listener untuk menutup keyboard ketika scroll ,
Dilakukan sekali ketika widget dibuat.
Kegunaan dispose() 
Menghapus controller untuk mencegah memory leak ,
Membersihkan event listener , 
Dipanggil saat widget dimusnahkan.

TUGAS PRAKTIKUM 2 : 
![ScreenRecord Dasar State](images/praktikum2_state.gif)
* Jelaskan mana yang dimaksud InheritedWidget pada langkah 1 tersebut! Mengapa yang digunakan InheritedNotifier?
InheritedNotifier<ValueNotifier<Plan>>
PlanProvider adalah InheritedWidget yang memiliki kemampuan notifikasi. Mengapa menggunakan InheritedNotifier, bukan InheritedWidget biasa?
✔ Karena data Plan bersifat berubah-ubah (mutable)
* Pada langkah 3, Mengembalikan jumlah task yang sudah complete (task.complete == true).
Membuat string ringkasan seperti:
-> 2 out of 3 tasks

TUGAS PRAKTIKUM 3 :
![ScreenRecord Master Plane](images/Plan1.gif)
![ScreenRecord Master Plane](images/Plan2.gif)
![ScreenRecord Master Plane](images/Plan3.gif)

* Berdasarkan Praktikum 3 yang telah Anda lakukan, jelaskan maksud dari gambar diagram berikut ini!

* Jawab: 
Diagram tersebut menunjukkan alur navigasi dan perbedaan struktur widget antara halaman input rencana (PlanCreatorScreen) dan halaman tampilan rencana (PlanScreen). Pada sisi kiri, pengguna berada di halaman awal yang berisi TextField untuk menambah item dan ListView untuk menampilkan daftar, semuanya dibungkus dalam Column. Ketika pengguna menekan tombol untuk membuka halaman detail, Flutter melakukan Navigator.push untuk berpindah ke halaman baru (diagram kanan), yaitu PlanScreen yang memiliki struktur berbeda: menggunakan Scaffold, Column, Expanded untuk daftar, serta SafeArea untuk teks di bagian bawah. Intinya, diagram ini menjelaskan perpindahan halaman dengan Navigator serta perbedaan layout antara halaman input dan halaman detail rencana.