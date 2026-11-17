# Tugas Rutin 1 — Setup Environment & Hello World Flutter

**Nama:** Christian Nicholas Sinaga  
**NIM:** 4243250005  
**Kelas:** PSIK 24C

## Deskripsi

Aplikasi Flutter sederhana yang menampilkan Hello World dan identitas mahasiswa.
Ikon tangan melambai dan tombol **Sapa saya** menjadi widget tambahan. Tekan
tombol untuk mengubah sapaan; tekan lagi untuk mengembalikannya.

## Menjalankan aplikasi

Pastikan Flutter SDK sudah terpasang, lalu jalankan dari folder proyek:

```powershell
flutter pub get
flutter doctor -v
flutter devices
flutter run
```

Untuk menjalankan aplikasi di Chrome:

```powershell
flutter run -d chrome
```

## Hasil verifikasi

### Keluaran `flutter --version`

```text
Flutter 3.47.9 • channel stable
Dart 3.13.7
DevTools 2.60.0
```

### Ringkasan `flutter doctor -v`

```text
[✓] Flutter (Channel stable, 3.47.9)
[✓] Windows Version
[✓] Android toolchain (Android SDK 36.1.0; licenses accepted)
[!] Android toolchain: multiple adb binaries found
[X] Visual Studio: not installed
[✓] Chrome
[✓] Connected device: Windows, Chrome, Edge
[✓] Network resources
```

Visual Studio hanya diperlukan untuk membangun aplikasi desktop Windows, bukan
Android atau web. Jika perangkat Android tidak muncul, aktifkan USB debugging,
setujui dialog otorisasi pada perangkat, lalu periksa `adb devices`. Ada dua
salinan `adb` pada komputer ini; pastikan Android Studio dan terminal memakai
salinan dari Android SDK yang sama.

Emulator `Medium_Phone` terdaftar, tetapi percobaan menjalankannya berhenti
dengan kode 1. Pemeriksaan akselerasi melaporkan AEHD tersedia, jadi penyebab
startup belum teridentifikasi. Untuk bukti perangkat, coba jalankan emulator
dari Android Studio Device Manager atau hubungkan ponsel Android melalui USB.

Pemeriksaan aplikasi:

```powershell
flutter analyze
flutter test
flutter build web
flutter build apk --debug
```

Semua perintah pemeriksaan aplikasi di atas berhasil. APK debug dibuat di
`build/app/outputs/flutter-apk/app-debug.apk`.

> **Bukti pengumpulan:** jalankan aplikasi pada emulator Android atau perangkat
> fisik, lalu tambahkan tangkapan layar hasil `flutter doctor -v` dan layar
> aplikasi ke repository sebelum dikumpulkan. Saat proyek ini disiapkan, tidak
> ada emulator atau perangkat Android yang berhasil terhubung, sehingga
> tangkapan layar perangkat belum tersedia. Jangan gunakan tangkapan layar
> browser sebagai pengganti bukti emulator/perangkat jika rubrik meminta bukti
> tersebut.

## Esai singkat: Native, Hybrid, dan Cross-platform

Pengembangan native membuat aplikasi secara khusus untuk satu sistem operasi,
misalnya Kotlin untuk Android atau Swift untuk iOS. Pendekatan ini memberi
akses paling langsung ke fitur perangkat dan biasanya cocok untuk aplikasi yang
membutuhkan performa tinggi. Kekurangannya, tim perlu mengembangkan dan merawat
implementasi terpisah untuk setiap platform.

Hybrid umumnya menggabungkan teknologi web seperti HTML, CSS, dan JavaScript
dengan pembungkus native. Cara ini memudahkan penggunaan kembali keterampilan
web, tetapi pengalaman pengguna dan akses ke kemampuan perangkat dapat
bergantung pada plugin atau jembatan ke kode native.

Cross-platform seperti Flutter menyediakan satu basis kode untuk menghasilkan
aplikasi di beberapa platform. Flutter menggambar antarmukanya sendiri melalui
widget, sehingga tampilan lebih konsisten dan pengembangan fitur bersama bisa
lebih cepat. Namun, pengembang tetap perlu menguji setiap target dan menulis
kode khusus platform ketika membutuhkan integrasi tertentu. Untuk tugas ini,
Flutter sesuai karena satu contoh kecil dapat berjalan di Android dan web,
sekaligus memperlihatkan struktur widget, tema, dan interaksi tombol. Pilihan
teknologi terbaik bergantung pada kebutuhan performa, fitur perangkat, waktu,
dan kemampuan tim.

## Repository GitHub publik

Gunakan nama repository `pm-pertemuan-01-4243250005`, atur visibility menjadi
**Public**, lalu unggah isi folder ini. Buat beberapa commit kecil yang
menunjukkan tahapan pengerjaan (misalnya setup proyek, tampilan Hello World,
dan dokumentasi/tes), bukan hanya satu commit akhir. Pastikan hasil perintah,
tangkapan layar perangkat, dan URL repository disertakan sebelum mengirim tautan
repository melalui LMS.
