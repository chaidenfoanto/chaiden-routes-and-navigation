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

- **lib/main.dart**: Entry point aplikasi, mendefinisikan `MaterialApp` dan routes.
- **lib/first_screen.dart**: Layar pertama dengan tombol untuk navigasi ke layar kedua.
- **lib/second_screen.dart**: Layar kedua dengan tombol untuk kembali ke layar pertama.
- **lib/screens**: Folder tempat menyimpan berbagai layar jika aplikasi berkembang.

## Teknologi yang Digunakan

- **Flutter**: Framework untuk membangun aplikasi mobile.
- **Dart**: Bahasa pemrograman yang digunakan untuk pengembangan aplikasi Flutte
