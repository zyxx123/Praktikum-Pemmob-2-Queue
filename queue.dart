/// ============================================================================
/// Program Implementasi Class Queue (Antrean) dalam Bahasa Dart
/// Struktur Data: FIFO (First In, First Out)
/// Menggunakan Generic Type <T> agar fleksibel untuk berbagai tipe data
/// ============================================================================

class Queue<T> {
  // List privat untuk menyimpan elemen-elemen antrean
  final List<T> _items = [];

  /// Metode Enqueue: Menambahkan elemen baru ke bagian belakang (tail) antrean
  void enqueue(T item) {
    _items.add(item);
    print("-> Enqueue: '$item' berhasil ditambahkan ke antrean.");
  }

  /// Metode Pop: Mengambil dan menghapus elemen dari bagian paling depan (head) antrean
  /// Mengembalikan nilai item yang dikeluarkan, atau null jika antrean kosong.
  T? pop() {
    if (isEmpty) {
      print("[Peringatan] Antrean kosong! Tidak ada elemen yang dapat di-pop.");
      return null;
    }
    // Sesuai prinsip FIFO, ambil dan hapus elemen indeks ke-0 (paling pertama masuk)
    T removedItem = _items.removeAt(0);
    print("<- Pop    : '$removedItem' telah keluar/diproses dari antrean.");
    return removedItem;
  }

  /// Memeriksa apakah antrean dalam keadaan kosong
  bool get isEmpty => _items.isEmpty;

  /// Memeriksa apakah antrean memiliki isi
  bool get isNotEmpty => _items.isNotEmpty;

  /// Mendapatkan jumlah elemen yang sedang mengantre saat ini
  int get length => _items.length;

  /// Melihat elemen paling depan tanpa mengeluarkannya dari antrean
  T? peek() {
    if (isEmpty) {
      return null;
    }
    return _items.first;
  }

  /// Menampilkan kondisi antrean saat ini dari urutan depan ke belakang
  void display() {
    if (isEmpty) {
      print("   Status Antrean: [KOSONG]");
    } else {
      print("   Status Antrean (Depan -> Belakang): $_items | Total: $length orang");
    }
  }

  /// Mengosongkan seluruh antrean
  void clear() {
    _items.clear();
    print("-> Antrean telah dikosongkan.");
  }
}

/// Fungsi utama (main) untuk menjalankan demonstrasi / simulasi penggunaan Queue
void main() {
  print("=================================================");
  print("         SIMULASI STRUKTUR DATA QUEUE (FIFO)     ");
  print("=================================================\n");

  // Inisialisasi antrean untuk data String (misalnya antrean loket pelayanan)
  Queue<String> antreanLoket = Queue<String>();

  print("1. Menambahkan antrean awal menggunakan enqueue():");
  antreanLoket.enqueue("Andi");
  antreanLoket.enqueue("Budi");
  antreanLoket.enqueue("Citra");
  antreanLoket.display();

  print("\n2. Melihat elemen paling depan tanpa mengeluarkan (peek):");
  print("   Orang paling depan saat ini: ${antreanLoket.peek()}");

  print("\n3. Memproses antrean menggunakan pop() (Prinsip FIFO):");
  antreanLoket.pop(); // Andi keluar karena masuk pertama kali
  antreanLoket.display();

  antreanLoket.pop(); // Budi keluar berikutnya
  antreanLoket.display();

  print("\n4. Menambahkan pengunjung baru ke dalam antrean:");
  antreanLoket.enqueue("Dewi");
  antreanLoket.enqueue("Eko");
  antreanLoket.display();

  print("\n5. Memproses seluruh sisa antrean hingga habis:");
  while (antreanLoket.isNotEmpty) {
    antreanLoket.pop();
    antreanLoket.display();
  }

  print("\n6. Menguji pemanggilan pop() saat antrean sudah kosong:");
  antreanLoket.pop();

  print("\n=================================================");
  print("           SIMULASI SELESAI DENGAN SUKSES        ");
  print("=================================================");
}
