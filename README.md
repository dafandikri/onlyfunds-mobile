### 1. Stateless Widget dan Stateful Widget

**Stateless Widget** adalah widget yang tidak menyimpan atau mengelola keadaan (state) internal. Widget ini dibangun sekali dan tidak berubah kecuali widget tersebut di-rebuild oleh parent-nya. Contoh: `Text`, `Icon`.

**Stateful Widget** adalah widget yang dapat menyimpan dan mengelola keadaan internal yang bisa berubah selama siklus hidup widget. Widget ini memiliki objek `State` yang terpisah untuk mengelola perubahan tersebut. Contoh: `Checkbox`, `TextField`.

**Perbedaan Utama:**
- **Stateful Widget** dapat berubah selama waktu berjalan aplikasi, sedangkan **Stateless Widget** tidak.
- **Stateful Widget** menggunakan metode `setState()` untuk memperbarui UI saat keadaan berubah.
- **Stateless Widget** lebih ringan dan digunakan ketika tidak ada perubahan data atau keadaan setelah widget dibangun.

### 2. Widget yang Digunakan dalam Proyek Ini dan Fungsinya

- **`MaterialApp`**: Widget utama yang menyediakan tema dan navigasi dasar untuk aplikasi Flutter.
- **`Scaffold`**: Menyediakan struktur dasar visual seperti AppBar, Body, dan lainnya.
- **`AppBar`**: Menampilkan bilah aplikasi di bagian atas layar dengan judul.
- **`Padding`**: Menambahkan padding (jarak) di sekitar widget anak.
- **`Column`**: Mengatur widget anak secara vertikal.
- **`SizedBox`**: Menambahkan ruang kosong dengan ukuran tertentu antara widget.
- **`ElevatedButton.icon`**: Membuat tombol yang berisi ikon dan teks.
- **`SnackBar`**: Menampilkan pesan sementara di bagian bawah layar.
- **`Icon` & `Text`**: Menampilkan ikon dan teks di dalam tombol.

### 3. Fungsi `setState()` dan Variabel yang Terdampak

**Fungsi `setState()`** digunakan dalam **Stateful Widget** untuk memberi tahu Flutter bahwa ada perubahan keadaan yang memerlukan pembaruan UI. Ketika `setState()` dipanggil, metode `build()` akan dieksekusi ulang sehingga UI mencerminkan perubahan terbaru.

**Variabel yang Terdampak:**
- Variabel yang dideklarasikan dalam objek `State` yang mewakili keadaan widget.
- Properti yang digunakan untuk menentukan tampilan atau perilaku widget berdasarkan nilai variabel tersebut.

**Contoh:**
```dart
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++; // Variabel yang terpengaruh
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text('Counter: $_counter');
  }
}