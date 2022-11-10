# Tugas 7 PBP: Elemen Dasar Flutter

**Nama : Andi Ayuna Rymang** <br />
**NPM : 2106637265** <br />
**Kelas : A** <br />

## Jelaskan apa yang dimaksud dengan _stateless widget_ dan _stateful widget_ dan jelaskan perbedaan dari keduanya.
Seperti namanya, ***stateless widget*** merupakan widget yang tidak mempunyai state. Saat diinstansiasi pertama kali, properti yang ada akan bersifat tetap dan final. Properti dari _Stateless widget_ ditentukan oleh parent-nya. Oleh karena itu, meskipun properti pada _stateless widget_ bersifat final, bisa saja terjadi perubahan ketika parent-nya juga mengalami perubahan. Sebaliknya, ***Stateful widget*** bersifat dinamis. Artinya, _widget_ ini dapat diubah dan diperbaharui, misalnya kita dapat mengupdate tampilan, merubah warna, menambah jumlah baris, dll.
<br />

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
Widget yang saya pakai di proyek kali ini antara lain:
- ```AppBar``` -> Biasanya terletak di bagian paling atas aplikasi yang gunanya sebagai menu penunjuk atau navigasi dari aplikasi
- ```Center``` -> Berfungsi untuk mengatur posisi widget agar berada di tengah
- ```Column``` -> Berfungsi untuk menampilkan widget-widget secara vertikal. Terdapat properti children sehingga widget ini dapat diisi oleh banyak widget
- ```Text``` -> Berfungsi untuk menampilkan text biasa dan kita dapat memberikan _styling_ dengan cara menambahkan properti style
- ```floatingActionButton``` -> Berfungsi button widget yang dapat floating di layar di atas widget-widget lainnya.
- ```Icon``` -> Berguna untuk menampilkan icon yang telah disediakan. Pada proyek ini saya menggunakan icon add dan remove
- ```Container``` -> Berfungsi untuk membungkus widget lain dan memiliki properti seperti padding, margin, dekorasi, dan background color
- ```Padding``` -> Berfungsi untuk membuat ruang kosong
- ```Row``` -> Berfungsi untuk menampilkan widget-widget secara horizontal. Terdapat properti children sehingga widget ini dapat diisi oleh banyak widget
<br />

## Apa fungsi dari ```setState()```? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
Fungsi dari ```setState()``` adalah untuk memberitahu bahwa terdapat perubahan pada state agar kemudian aplikasi dapat memuat ulang widget dengan value yang baru. Variabel yang terdampak pada fungsi ```setState()``` di proyek ini adalah ```_counter``` dan ```_oddOrEven```.

## Jelaskan perbedaan antara ```const``` dengan ```final```.
Meskipun sama-sama bersifat _immutable_, tetapi terdapat perbedaan di antara keduanya. Perbedaan antara ```const``` dengan ```final``` berkaitan dengan _compile time_. Untuk ```const``` sendiri harus memiliki value saat _compile time_, sedangkan untuk ```final```, value-nya dapat dideklarasikan sebelum dan sesudah _compile time_. 

## Jelaskan bagaimana cara kamu mengimplementasikan _checklist_ di atas.
- Membuat app baru dengan menjalankan perintah ```flutter create counter_7```
- Membuat fungsi bernama ```_decrementCounter()``` yang digunakan saat counter dikurang
- Di masing-masing fungsi ```_incrementCounter()``` dan ```_decrementCounter()```, ditambahkan _conditional statement_ untuk menyimpan status ganjil atau genap dari counter.
- Membuat widget yang mengimplementasikan counter dengan informasi ganjil/genap serta widget button untuk melakukan _increment_ dan _decrement_ terhadap counter. 
- Untuk membuat button decrement dapat tersembunyi saat counter bernilai 0, saya menggunakan *ternary operator*.