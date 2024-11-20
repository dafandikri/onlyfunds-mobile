# OnlyFunds - Mobile
**Home of The Best Cashless Transaction**

Welcome to OnlyFunds, the best platform for cashless transactions.

[OnlyFunds' Website]()

## Contents:
- [Tugas 7](#tugas-7)
- [Tugas 8](#tugas-8)
- [Tugas 9](#tugas-9)

## Tugas 9 <a id="tugas-9"></a>

### 1. Mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?

Membuat model memudahkan pengelolaan data JSON dengan memetakan struktur data ke dalam objek Dart. Tanpa model, parsing data menjadi manual dan rawan kesalahan, namun tidak akan langsung menimbulkan error.

### 2. Jelaskan fungsi dari library http yang sudah kamu implementasikan pada tugas ini

Library `http` digunakan untuk melakukan permintaan HTTP seperti GET, POST, PUT, dan DELETE ke server, memungkinkan aplikasi Flutter berkomunikasi dengan backend.

### 3. Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.

`CookieRequest` mengelola permintaan HTTP dengan menangani cookie secara otomatis. Instance perlu dibagikan agar sesi dan autentikasi konsisten di seluruh komponen aplikasi.

### 4. Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.

Data diinput pengguna melalui form, dikirim ke backend melalui HTTP request, backend memproses dan menyimpan data, kemudian Flutter menerima respons dan menampilkan data tersebut di UI.

### 5. Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.

Pengguna mendaftar atau login di Flutter, data dikirim ke Django melalui HTTP request, Django memverifikasi dan mengirim token autentikasi, Flutter menyimpan token dan menampilkan menu sesuai status autentikasi.

### 6. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).

1. Membuat model Dart sesuai struktur JSON.
2. Mengintegrasikan library `http` untuk komunikasi dengan backend.
3. Mengimplementasikan `CookieRequest` dan memastikan instance dibagikan menggunakan provider atau dependency injection.
4. Membuat form input di Flutter dan menghubungkannya dengan fungsi pengiriman data.
5. Menangani respons autentikasi dari Django dan mengelola navigasi UI berdasarkan status login.
6. Menguji setiap langkah untuk memastikan fungsionalitas berjalan sesuai checklist.

## Tugas 8 <a id="tugas-8"></a>

### 1. Apa kegunaan `const` di Flutter? Jelaskan apa keuntungan ketika menggunakan `const` pada kode Flutter. Kapan sebaiknya kita menggunakan `const`, dan kapan sebaiknya tidak digunakan?

- **Kegunaan `const`**: Digunakan untuk mendefinisikan nilai yang tidak akan berubah selama runtime. `const` memungkinkan Flutter untuk mengoptimalkan performa aplikasi dengan mengurangi beban rekonstruksi widget.
- **Keuntungan menggunakan `const`**:
  - **Performa yang lebih baik**: Mengurangi jumlah objek yang harus dibuat ulang.
  - **Immutability**: Memastikan nilai tidak berubah, meningkatkan keamanan dan keandalan kode.
- **Kapan menggunakan `const`**:
  - Ketika nilai atau widget tidak akan berubah setelah didefinisikan.
- **Kapan tidak menggunakan `const`**:
  - Ketika nilai atau widget perlu berubah selama runtime atau berdasarkan interaksi pengguna.

### 2. Jelaskan dan bandingkan penggunaan `Column` dan `Row` pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!

- **`Column`**:
  - Menyusun widget anak secara vertikal.
  - Cocok untuk layout yang membutuhkan susunan vertikal, seperti daftar item.
  - **Contoh**:
    ```dart
    Column(
      children: [
        Text('Item 1'),
        Text('Item 2'),
        Text('Item 3'),
      ],
    )
    ```
- **`Row`**:
  - Menyusun widget anak secara horizontal.
  - Cocok untuk layout yang membutuhkan susunan horizontal, seperti bar navigasi.
  - **Contoh**:
    ```dart
    Row(
      children: [
        Icon(Icons.home),
        Icon(Icons.search),
        Icon(Icons.settings),
      ],
    )
    ```
- **Perbandingan**:
  - `Column` mengatur widget secara vertikal, sedangkan `Row` mengatur secara horizontal.
  - Pilihan antara keduanya tergantung pada orientasi layout yang diinginkan.

### 3. Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!

- **Elemen input yang digunakan**:
  - `TextField`: Untuk memasukkan teks.
  - `Checkbox`: Untuk pilihan ganda.
  - `DropdownButton`: Untuk memilih dari daftar opsi.
- **Elemen input lain yang tidak digunakan**:
  - `Radio`: Untuk pilihan eksklusif.
  - `Switch`: Untuk toggling on/off.
  - `Slider`: Untuk memilih nilai dari rentang tertentu.
- **Penjelasan**: Elemen-elemen tersebut tidak digunakan karena kebutuhan form pada tugas tidak memerlukannya, namun bisa digunakan untuk interaksi yang lebih kompleks.

### 4. Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?

- **Mengatur Tema**:
  - Mendefinisikan `ThemeData` secara global di widget `MaterialApp`.
  - Menentukan warna primer, warna sekunder, font, dan gaya teks.
- **Implementasi**:
  - Ya, saya mengimplementasikan tema dengan mendefinisikan `ThemeData` pada `MaterialApp` untuk memastikan konsistensi tampilan di seluruh aplikasi.
  - **Contoh**:
    ```dart
    MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue,
        accentColor: Colors.amber,
        textTheme: TextTheme(
          bodyText2: TextStyle(fontSize: 16.0),
        ),
      ),
      home: HomePage(),
    )
    ```

### 5. Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?

- **Menangani Navigasi**:
  - Menggunakan `Navigator` untuk berpindah antar halaman.
  - Mendefinisikan rute (routes) secara terpusat dalam `MaterialApp`.
  - Menggunakan `push` dan `pop` untuk menavigasi ke halaman baru atau kembali.
- **Implementasi**:
  - Mendefinisikan rute dalam `MaterialApp`:
    ```dart
    MaterialApp(
      routes: {
        '/': (context) => HomePage(),
        '/detail': (context) => DetailPage(),
      },
    )
    ```
  - Navigasi ke halaman detail:
    ```dart
    Navigator.pushNamed(context, '/detail');
    ```
  - Kembali ke halaman sebelumnya:
    ```dart
    Navigator.pop(context);
    ```

## Tugas 7 <a id="tugas-7"></a>

### 1. Stateless Widget dan Stateful Widget

**Stateless Widget** adalah widget yang tidak memiliki state internal yang dapat berubah. Setelah dibangun, widget ini tidak akan berubah selama siklus hidupnya. Contoh: `Text`, `Icon`.

**Stateful Widget** adalah widget yang memiliki state internal yang dapat berubah seiring waktu atau interaksi pengguna. Widget ini menggunakan objek `State` untuk mengelola perubahan tersebut. Contoh: `Checkbox`, `TextField`.

**Perbedaan Utama:**

- **Stateless Widget** bersifat statis dan tidak berubah setelah dibangun, sedangkan **Stateful Widget** dapat berubah dan diperbarui selama aplikasi berjalan.
- **Stateful Widget** menggunakan metode `setState()` untuk memperbarui UI ketika state berubah.
- **Stateless Widget** lebih ringan dan digunakan untuk elemen UI yang tidak memerlukan perubahan.

### 2. Widget yang Digunakan dalam Proyek Ini dan Fungsinya

- **`MaterialApp`**: Widget utama yang menyediakan tema dan navigasi dasar untuk aplikasi.
- **`Scaffold`**: Menyediakan struktur dasar halaman dengan properti seperti `appBar` dan `body`.
- **`AppBar`**: Menampilkan bilah aplikasi di bagian atas layar dengan judul dan aksi.
- **`Padding`**: Menambahkan ruang di sekitar widget anak.
- **`Column`** dan **`Row`**: Mengatur widget anak secara vertikal dan horizontal.
- **`Text`**: Menampilkan teks di layar.
- **`Card`**: Menampilkan kotak dengan sudut membulat dan bayangan untuk konten.
- **`GridView`**: Menampilkan array widget dalam bentuk grid yang dapat di-scroll.
- **`Icon`**: Menampilkan ikon dari pustaka material design.
- **`InkWell`**: Menangani interaksi sentuh dengan efek visual seperti ripple.

### 3. Fungsi `setState()` dan Variabel yang Terdampak

Fungsi `setState()` digunakan dalam **Stateful Widget** untuk memberi tahu framework bahwa ada perubahan pada state objek yang memerlukan pembaruan UI. Ketika `setState()` dipanggil, metode `build()` akan dieksekusi ulang sehingga perubahan tercermin pada tampilan.

**Variabel yang Terdampak:**

- Variabel yang didefinisikan dalam objek `State` dan digunakan dalam metode `build()`.
- Contoh variabel yang mungkin berubah: penghitung, status login, daftar item.

### 4. Perbedaan antara `const` dengan `final`

- **`const`**: Digunakan untuk mendefinisikan nilai konstan yang bersifat compile-time constant. Nilai harus sudah diketahui saat kompilasi dan tidak dapat diubah.
- **`final`**: Digunakan untuk variabel yang nilainya hanya dapat ditetapkan sekali dan bersifat immutable, tetapi nilainya dapat ditentukan saat runtime.

**Contoh:**

```dart
const double pi = 3.14; // Nilai sudah diketahui saat kompilasi dan tidak akan berubah.

final DateTime sekarang = DateTime.now(); // Nilai ditentukan saat runtime dan tidak dapat diubah.
```

### 5. Cara Mengimplementasikan Checklist di Atas

- **Mengidentifikasi Widget**: Menentukan komponen mana yang membutuhkan **Stateful Widget** atau **Stateless Widget** berdasarkan apakah state internal diperlukan.
- **Menggunakan Widget Sesuai Fungsi**: Mengimplementasikan widget seperti `AppBar`, `Scaffold`, `GridView`, dan lainnya sesuai kebutuhan tampilan dan interaksi.
- **Mengelola State dengan `setState()`**: Menggunakan `setState()` untuk memperbarui UI saat ada perubahan data atau interaksi pengguna.
- **Menerapkan `const` dan `final` Secara Tepat**: Menggunakan `const` untuk nilai yang tetap dan tidak berubah, serta `final` untuk nilai yang diinisialisasi sekali dan tidak dapat diubah setelahnya.
- **Pengujian dan Debugging**: Menguji aplikasi untuk memastikan semua fungsi berjalan sesuai dengan yang diharapkan dan memperbaiki jika ada kesalahan.
