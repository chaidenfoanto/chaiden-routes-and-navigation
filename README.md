# Session 5 : Lab Activity - Routes & Navigation

---
### Nama: Chaiden Richardo Foanto  
### NIM: 0806022310023  
### Mata Kuliah: Visual Programming - Flutter  

---

# Navigation Codelab - Flutter

Repository ini berisi tugas Flutter yang menerapkan navigasi antar layar menggunakan **Named Routes** dan **Bottom Navigation Bar**. Aplikasi ini memiliki dua layar utama: **First Screen** dan **Second Screen**. Navigasi antar layar dapat dilakukan melalui tombol, Drawer ataupun Bottom Navigation Bar.

## Fitur
- **Drawer Menu**: Menu navigasi untuk berpindah ke layar kedua.
- **Bottom Navigation Bar**: Navigasi antar layar melalui Bottom Navigation.
- **Navigasi dengan Named Routes**: Menggunakan rute bernama untuk berpindah antar layar.
- **Tombol Kembali ke Layar Sebelumnya**: Navigasi kembali ke layar sebelumnya menggunakan tombol pada layar kedua.

---

## Cara Menjalankan Aplikasi

### 1. Clone Repository
Untuk memulai, clone repository ini ke mesin lokal Anda menggunakan perintah berikut:
```bash
git clone https://github.com/username/navigation_codelab.git
```

### 2. Masuk ke Direktori Proyek
Setelah clone berhasil, masuk ke dalam direktori proyek dengan perintah:
```bash
cd navigation_codelab
```

### 3. Jalankan Aplikasi
Pastikan Anda sudah menginstal Flutter di sistem Anda. Jika belum, silakan ikuti panduan instalasi Flutter di sini: [Panduan Instalasi Flutter](https://flutter.dev/docs/get-started/install).
Setelah itu, jalankan aplikasi dengan perintah:
```bash
flutter run
```
Aplikasi akan dijalankan pada emulator atau perangkat yang terhubung.

---

## Struktur Proyek
```vbnet
chaiden_routes-and-navigation/
├── navigation_codelab/
    ├── lib/
    |   ├── first_screen.dart
    |   ├── main.dart
    |   ├── second_screen.dart
    |   └── third_screen.dart
    |
    └── pubspec.yaml
  ```

## Pendekatan yang Digunakan dan Tantangan yang Dihadapi dalam Implementasi Navigasi Lanjutan

### Pendekatan yang Digunakan

Untuk tugas ini, saya mengimplementasikan navigasi menggunakan dua metode utama: **Named Routes**, **Drawer Menu** dan **Bottom Navigation Bar**.

1. **Named Routes**:  
   Pada aplikasi ini, saya menggunakan **Named Routes** untuk mengelola navigasi antar layar. Setiap layar memiliki rute tersendiri yang didefinisikan di dalam `MaterialApp` dengan `routes`. Ini memudahkan pengelolaan dan pemisahan logika navigasi antar layar.

2. **Drawer Menu**:
   Saya juga mengimplementasikan **Drawer Menu** di setiap layar untuk memberikan alternatif navigasi bagi pengguna. Pengguna dapat berpindah antar layar dengan memilih item menu yang ada di dalam **Drawer**. Menu ini menggunakan `Navigator.pushNamed()` untuk berpindah antar layar dan `Navigator.pop()` untuk kembali ke layar sebelumnya. Penggunaan **Drawer** ini memberikan fleksibilitas lebih dalam navigasi aplikasi, sehingga pengguna bisa memilih cara navigasi yang paling nyaman untuk mereka.


3. **Bottom Navigation Bar**:  
   Selain itu, saya juga menerapkan **Bottom Navigation Bar** untuk memungkinkan pengguna berpindah antar layar tanpa harus memuat ulang seluruh halaman. Di setiap layar (`FirstScreen`, `SecondScreen`, `ThirdScreen`), saya menambahkan **Bottom Navigation Bar** yang berisi tiga item navigasi. Setiap item di dalam bar ini akan mengubah tampilan sesuai dengan layar yang dipilih, menggunakan `IndexedStack`. Ini memungkinkan tampilan layar yang aktif tetap berada dalam satu `Scaffold`, hanya isi halaman yang akan berubah, bukan seluruh halaman aplikasi. Ini penting untuk menjaga pengalaman pengguna agar lebih efisien.

### Tantangan yang Dihadapi

    Salah satu tantangan yang saya hadapi adalah mengatur **Bottom Navigation Bar**, supaya navbar saya hanya mengganti **isi halaman**, bukan mengganti **seluruh halaman**. Pada implementasi awal, saya menggunakan `Navigator.pushNamed()` untuk berpindah ke layar lain saat memilih item di **Bottom Navigation Bar**, yang menyebabkan layar penuh dimuat kembali setiap kali memilih menu navbar. Hal ini tidak sesuai dengan instruksi ko Rei (Asisten Dosen), yang menginginkan hanya **isi layar** yang berubah tanpa harus memuat ulang halaman secara keseluruhan.

    Untuk mengatasi masalah ini, saya mengganti pendekatan dengan menggunakan **IndexedStack**. Dengan menggunakan **IndexedStack**, saya memastikan bahwa hanya tampilan **isi halaman** yang berubah ketika item di **Bottom Navigation Bar** dipilih, tanpa harus mereload seluruh halaman. Setiap layar sekarang berada dalam stack yang terpisah dan hanya tampilan layar yang aktif yang ditampilkan, sementara layar lainnya tetap berada di belakang dan tidak terganggu.

    Selain itu, pada **Drawer Menu** yang ada di setiap layar, saya juga memastikan agar pengguna dapat berpindah antar layar dengan menggunakan `Navigator.pushNamed()` dan `Navigator.pop()`, yang memberikan fleksibilitas lebih dalam navigasi aplikasi.

## Teknologi yang Digunakan

- **Flutter**: Framework untuk membangun aplikasi mobile.
- **Dart**: Bahasa pemrograman yang digunakan untuk pengembangan aplikasi Flutter

Thank you.
