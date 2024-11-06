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
