# Tugas 9 : Integrasi Web Service pada Flutter
**Nama : Andi Ayuna Rymang** <br />
**NPM : 2106637265** <br />
**Kelas : A** <br />

## Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
Bisa. JSON merupakan suatu object dalam notasi JS yang dimana pada bahasa Dart, hal ini mirip dengan Map yang terdiri dari key dam value pair. Akan tetapi pengambilan data JSON tanpa melakukan konversi ke dalam suatu model tidak direkomendasikan dalam pengimplementasiaannya. Konversi data JSON ke dalam suatu mode bertuuan untuk meminimalisir pengambilan atau pengiriman data melalui http request yang akan ditampilkan pada sisi UI aplikasi


## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
- ```Container```, ```Center```, ```Column```, ```Row``` -> digunakan untuk mengantur posisi widget-widget lainnya
- ```FutureBuilder``` -> berfungsi agar widget tersebut dapat membangun dirinya sendiri berdasarkan snapshot terakhir interaksinya dengan sebuah Future
- ```Text``` -> digunakan untuk menapilkan text dan memberikan styling pada text
- ```Form``` --> memberikan screen untuk input form user
- ```Drawer``` --> digunakan untuk navigasi
- ```ListTile``` --> agar bisa mengarahkan user ke screen yang dia ingingkan ketika meng-click tulisan screen yang ada di navigasi

## Jelaskan mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter.
Untuk melakukan fetch data JSON dari internet, kita perlu menggunakan method get dari package http. Agar kita dapat melakuakn request HTTP GET dari suatu website, kita perlu menyediakan URI untuk source data JSON-nya lalu di-parse menjadi URL. URL tersebut menspesifikasikan protokol HTTP. 
Ketika address dari HTP dimaksukkan ke web browser, maka browser tsb akan mengirimkan request HTTP GET ke web server. Lalu, web server akan mengirimkan response HTTP. Response tersebut kemudia di-decode yang pada tugas ini akan dimasukkan ke dalam list untuk nantinya ditampilkan di aplikasi

##  Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
- Refactor file-file ke dala forlder yang terpisah
- Membuat 3 file baru : ```mywatchlistmodel.dart```, ```mywatchlist.dart```, dan ```detail.dart```
- ```mywatchlistmodel.dart``` dibuat boilerplate untuk memproses data JSON yang diambil
- Mengambil data jSON dari link heroku tugas3 sebelumnya
- Data-data dari JSON kemudian ditampilkan pada card
- ```detail.dart``` berisi informasi lengkap dari tiap watchlist yang baru bisa diakses ketika card pada page mywatchlist di-click (menggunakan fungsi push)
- Terakhir, menambahkan button back pada detail.dart dengan memanfaatkan fungsi pop


# Tugas 8 PBP: Flutter Form

**Nama : Andi Ayuna Rymang** <br />
**NPM : 2106637265** <br />
**Kelas : A** <br />

## Jelaskan perbedaan ```navigator.push``` dan ```Navigator.pushReplacement```.
```push``` hanya akan menambah isi stack dari route, sedangkan ```pushReplacement``` akan mengganti widget teratas pada stack dengan widget baru. ```push``` tidak akan menghapus widget sebelumnya, sementara ```pushReplacement``` akan menggantikan widget sebelumnya dengan widget baru.

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya. 
- ```Form``` --> memberikan screen untuk input form user
- ```Drawer``` --> digunakan untuk navigasi
- ```ListTile``` --> agar bisa mengarahkan user ke screen yang dia ingingkan ketika meng-click tulisan screen yang ada di navigasi
- ```Padding``` --> berfungsi untuk membuat ruang kosong
- ```Column``` --> menampilkan widget-widget secara vertikal. Terdapat properti children sehingga widget ini dapat diisi oleh banyak widget
- ```Dropdownbutton``` --> digunakan untuk menu dropdown user input
- ```TextFormField``` --> form field untuk menampung text fiels
- ```TextButton``` --> menapung kode yang digunakan untuk submit isi form dan menyimpan isi for tersebut ke suatu list
- ```Align``` --> mengatur posisi
- ```SizedBox``` --> mengatur ukuran card
- ```Card``` --> untuk menampilkan data dari form

## Sebutkan jenis-jenis event yang ada pada Flutter (contoh: ```onPressed```).
- ```onPressed```
- ```onLongPress```
- ```onFocusChange```
- ```onTap```
- ```onHover```

## Jelaskan bagaimana cara kerja ```Navigator``` dalam "mengganti" halaman dari aplikasi FLutter.
Cara kerja ```Navigator``` adalah dengan menampilkan screen dari elemen teratas pada stack of route. Widget ```Navigator``` memiliki method ```push()``` dan ```pop()```. Penggunaan push akan menambahkan screen ke bagian paling atas stack sedangkan penggunaan pop akan menghapus screen teratas dari stack. 

## Jelaskan bagaimana cara kamu mengimplementasikan _checklist_ di atas.
- membuat dua file baru yaitu form.dart dan show.dart
- membuat drawer untuk navigator sehingga user dapat berpindah ke screen lainnya melalui navigator
- mebuat widget form di dalam form.dart yang berisi key untuk identifikasi form dan validasi form. Form akan meminta input berupa judul, nominal, dan jenis budget.
- mengatur padding setiap input
- menambahkan behavior ketika nama diketik, saat data disimpan, dan validator
- pada show.dart, setiap data akan ditampilkan dengan melakukan looping pada children dari Column. Tiap data akan ditampilkan dalam bentuk card.

<br />
<br />

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