# Tugas Praktikum Pemrograman Mobile - Implementasi Queue (Antrean)

Repository ini berisi implementasi struktur data **Queue (Antrean)** berbasis konsep **FIFO (First In, First Out)** menggunakan bahasa pemrograman **Dart**.

---

## Identitas Mahasiswa

- **Nama** : Zaki Fatah Alfikri
- **NIM** : H1D024124
- **Shift Awal** : I
- **Shift Sekarang** : B

---

## Deskripsi Singkat

Struktur data **Queue** adalah kumpulan elemen berurutan di mana penambahan elemen baru dilakukan di bagian belakang (*tail*) dan pengambilan/penghapusan elemen dilakukan di bagian depan (*head*). Konsep ini mengikuti prinsip **FIFO (First-In, First-Out)**, yaitu elemen yang pertama kali dimasukkan akan menjadi elemen yang pertama kali keluar.

Program dibuat menggunakan **Generics (`Queue<T>`)** agar fleksibel dan dapat digunakan untuk berbagai tipe data.

---

## Penjelasan Kode (`queue.dart`)

1. **Kelas `Queue<T>`**
   - Mendefinisikan antrean generik dengan list privat `_items` untuk menampung data.
2. **Metode `enqueue(T item)`**
   - Menambahkan elemen baru ke urutan paling belakang antrean menggunakan `_items.add(item)`.
3. **Metode `pop()`**
   - Mengambil dan menghapus elemen paling depan antrean menggunakan `_items.removeAt(0)` sesuai aturan FIFO.
   - Jika antrean kosong, menampilkan pesan peringatan dan mengembalikan `null`.
4. **Metode Pendukung**
   - `isEmpty` & `isNotEmpty`: Mengecek status kekosongan antrean.
   - `length`: Mengetahui jumlah elemen dalam antrean.
   - `peek()`: Melihat elemen paling depan tanpa menghapusnya.
   - `display()`: Menampilkan urutan antrean saat ini dari depan ke belakang.
   - `clear()`: Mengosongkan antrean.
5. **Fungsi `main()`**
   - Berisi alur simulasi pengujian antrean: mulai dari penambahan data (`enqueue`), melihat elemen terdepan (`peek`), pemrosesan data berurutan (`pop`), penambahan data baru di tengah jalan, pemrosesan sisa antrean hingga habis, dan pengujian `pop()` saat antrean kosong.

---

## Cara Menjalankan Program

### Prasyarat
- **Dart SDK** sudah terpasang. Cek dengan perintah:
  ```bash
  dart --version
  ```

### Menjalankan Program
1. Buka terminal pada folder proyek:
   ```bash
   cd "D:\Praktikum Pemob"
   ```
2. Jalankan perintah berikut:
   ```bash
   dart run queue.dart
   ```

---

## Output Program

```text
=================================================
         SIMULASI STRUKTUR DATA QUEUE (FIFO)     
=================================================

1. Enqueue data ke antrean:
-> Enqueue: 'Andi' berhasil ditambahkan ke antrean.
-> Enqueue: 'Budi' berhasil ditambahkan ke antrean.
-> Enqueue: 'Citra' berhasil ditambahkan ke antrean.
   Status Antrean (Depan -> Belakang): [Andi, Budi, Citra] | Total: 3

2. Melihat elemen terdepan (peek):
   Elemen terdepan: Andi

3. Memproses data dengan pop():
<- Pop    : 'Andi' telah keluar/diproses dari antrean.
   Status Antrean (Depan -> Belakang): [Budi, Citra] | Total: 2
<- Pop    : 'Budi' telah keluar/diproses dari antrean.
   Status Antrean (Depan -> Belakang): [Citra] | Total: 1

4. Menambahkan data baru:
-> Enqueue: 'Dewi' berhasil ditambahkan ke antrean.
-> Enqueue: 'Eko' berhasil ditambahkan ke antrean.
   Status Antrean (Depan -> Belakang): [Citra, Dewi, Eko] | Total: 3

5. Memproses sisa antrean hingga habis:
<- Pop    : 'Citra' telah keluar/diproses dari antrean.
   Status Antrean (Depan -> Belakang): [Dewi, Eko] | Total: 2
<- Pop    : 'Dewi' telah keluar/diproses dari antrean.
   Status Antrean (Depan -> Belakang): [Eko] | Total: 1
<- Pop    : 'Eko' telah keluar/diproses dari antrean.
   Status Antrean: [KOSONG]

6. Uji pop saat antrean kosong:
[Peringatan] Antrean kosong! Tidak ada elemen yang dapat di-pop.

=================================================
           SIMULASI SELESAI DENGAN SUKSES        
=================================================
```
