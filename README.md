# Tugas Praktikum Pemrograman Mobile - Implementasi Queue (Antrean)

Repository ini berisi implementasi struktur data **Queue (Antrean)** berbasis konsep **FIFO (First In, First Out)** menggunakan bahasa pemrograman **Dart**.

---

## 📌 Identitas Mahasiswa

- **Nama** : Zaki Fatah Alfikri
- **NIM** : H1D024124
- **Shift Awal** : I
- **Shift Sekarang** : B

---

## 📖 Deskripsi Singkat

Struktur data **Queue** adalah kumpulan elemen berurutan di mana penambahan elemen baru dilakukan di bagian belakang (*rear/tail*) dan penghapusan atau pemrosesan elemen dilakukan di bagian depan (*front/head*). Konsep ini dikenal dengan prinsip **FIFO (First-In, First-Out)**, di mana elemen yang pertama kali dimasukkan akan menjadi elemen yang pertama kali dikeluarkan.

Program ini dibuat menggunakan tipe data **Generics (`Queue<T>`)**, sehingga dapat digunakan secara fleksibel untuk berbagai tipe data (seperti `String`, `int`, objek kustom, dll).

---

## 🔍 Penjelasan Kode (`queue.dart`)

Berikut adalah komponen utama pada implementasi `queue.dart`:

1. **Kelas `Queue<T>`**
   - Menggunakan konsep Generic Type `<T>` agar struktur antrean bersifat dinamis terhadap tipe data apapun.
   - Properti privat `final List<T> _items = [];` digunakan sebagai wadah penyimpan elemen antrean secara internal (enkapsulasi).

2. **Metode `enqueue(T item)`**
   - Berfungsi untuk menambahkan elemen baru ke bagian paling belakang (*tail*) dari antrean.
   - Menggunakan fungsi bawaan `_items.add(item)` yang menambahkan elemen di indeks terakhir list.
   - Menampilkan pesan konfirmasi penambahan elemen ke konsol.

3. **Metode `pop()`**
   - Berfungsi untuk mengambil sekaligus mengeluarkan elemen dari bagian paling depan (*head*) antrean sesuai aturan FIFO.
   - Memeriksa kondisi apakah antrean sedang kosong (`isEmpty`). Jika kosong, program mencetak peringatan dan mengembalikan nilai `null` (mencegah *runtime error/exception*).
   - Jika antrean memiliki isi, program mengambil dan menghapus elemen indeks ke-0 menggunakan `_items.removeAt(0)` lalu mengembalikan elemen tersebut.

4. **Metode dan Properti Tambahan (Helper)**
   - `isEmpty`: *Getter* boolean untuk memeriksa apakah antrean tidak memiliki elemen.
   - `isNotEmpty`: *Getter* boolean untuk memeriksa apakah antrean memiliki setidaknya satu elemen.
   - `length`: *Getter* untuk mengetahui jumlah elemen yang sedang mengantre.
   - `peek()`: Mengembalikan elemen paling depan tanpa mengeluarkannya dari antrean.
   - `display()`: Menampilkan daftar seluruh elemen antrean dari urutan depan ke belakang beserta total elemennya.
   - `clear()`: Mengosongkan seluruh antrean sekaligus.

5. **Fungsi `main()` (Simulasi Pengujian)**
   - Menguji pembuatan antrean `Queue<String>` (simulasi antrean loket pelayanan).
   - Menguji operasi `enqueue()` untuk menambahkan beberapa nama pelanggan ("Andi", "Budi", "Citra").
   - Menguji operasi `peek()` untuk melihat siapa yang sedang berada di antrean paling depan.
   - Menguji operasi `pop()` untuk memproses pelanggan secara berurutan sesuai FIFO.
   - Menguji penambahan pelanggan baru ("Dewi", "Eko") di tengah proses.
   - Menguji pemrosesan seluruh sisa antrean hingga kosong.
   - Menguji penanganan kasus batas (*edge case*) ketika memanggil `pop()` saat antrean sudah kosong.

---

## 🚀 Cara Menjalankan Program

### Prasyarat
- Pastikan **Dart SDK** atau **Flutter SDK** sudah terpasang di komputer Anda.
- Verifikasi instalasi dengan menjalankan perintah:
  ```bash
  dart --version
  ```

### Langkah Menjalankan
1. Buka terminal atau Command Prompt / PowerShell.
2. Pastikan berada di direktori project:
   ```bash
   cd "D:\Praktikum Pemob"
   ```
3. Jalankan file Dart dengan perintah:
   ```bash
   dart run queue.dart
   ```
   *(atau dapat juga menggunakan `dart queue.dart`)*

---

## 🖥️ Output Program

Berikut adalah hasil *output* terminal saat program dijalankan:

```text
=================================================
         SIMULASI STRUKTUR DATA QUEUE (FIFO)     
=================================================

1. Menambahkan antrean awal menggunakan enqueue():
-> Enqueue: 'Andi' berhasil ditambahkan ke antrean.
-> Enqueue: 'Budi' berhasil ditambahkan ke antrean.
-> Enqueue: 'Citra' berhasil ditambahkan ke antrean.
   Status Antrean (Depan -> Belakang): [Andi, Budi, Citra] | Total: 3 orang

2. Melihat elemen paling depan tanpa mengeluarkan (peek):
   Orang paling depan saat ini: Andi

3. Memproses antrean menggunakan pop() (Prinsip FIFO):
<- Pop    : 'Andi' telah keluar/diproses dari antrean.
   Status Antrean (Depan -> Belakang): [Budi, Citra] | Total: 2 orang
<- Pop    : 'Budi' telah keluar/diproses dari antrean.
   Status Antrean (Depan -> Belakang): [Citra] | Total: 1 orang

4. Menambahkan pengunjung baru ke dalam antrean:
-> Enqueue: 'Dewi' berhasil ditambahkan ke antrean.
-> Enqueue: 'Eko' berhasil ditambahkan ke antrean.
   Status Antrean (Depan -> Belakang): [Citra, Dewi, Eko] | Total: 3 orang

5. Memproses seluruh sisa antrean hingga habis:
<- Pop    : 'Citra' telah keluar/diproses dari antrean.
   Status Antrean (Depan -> Belakang): [Dewi, Eko] | Total: 2 orang
<- Pop    : 'Dewi' telah keluar/diproses dari antrean.
   Status Antrean (Depan -> Belakang): [Eko] | Total: 1 orang
<- Pop    : 'Eko' telah keluar/diproses dari antrean.
   Status Antrean: [KOSONG]

6. Menguji pemanggilan pop() saat antrean sudah kosong:
[Peringatan] Antrean kosong! Tidak ada elemen yang dapat di-pop.

=================================================
           SIMULASI SELESAI DENGAN SUKSES        
=================================================
```
