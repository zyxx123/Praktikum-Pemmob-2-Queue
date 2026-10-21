class Queue<T> {
  final List<T> _items = [];

  void enqueue(T item) {
    _items.add(item);
    print("-> Enqueue: '$item' berhasil ditambahkan ke antrean.");
  }

  T? pop() {
    if (isEmpty) {
      print("[Peringatan] Antrean kosong! Tidak ada elemen yang dapat di-pop.");
      return null;
    }
    T removedItem = _items.removeAt(0);
    print("<- Pop    : '$removedItem' telah keluar/diproses dari antrean.");
    return removedItem;
  }

  bool get isEmpty => _items.isEmpty;

  bool get isNotEmpty => _items.isNotEmpty;

  int get length => _items.length;

  T? peek() {
    if (isEmpty) {
      return null;
    }
    return _items.first;
  }

  void display() {
    if (isEmpty) {
      print("   Status Antrean: [KOSONG]");
    } else {
      print("   Status Antrean (Depan -> Belakang): $_items | Total: $length");
    }
  }

  void clear() {
    _items.clear();
    print("-> Antrean telah dikosongkan.");
  }
}

void main() {
  print("=================================================");
  print("         SIMULASI STRUKTUR DATA QUEUE (FIFO)     ");
  print("=================================================\n");

  var antrean = Queue<String>();

  print("1. Enqueue data ke antrean:");
  antrean.enqueue("Andi");
  antrean.enqueue("Budi");
  antrean.enqueue("Citra");
  antrean.display();

  print("\n2. Melihat elemen terdepan (peek):");
  print("   Elemen terdepan: ${antrean.peek()}");

  print("\n3. Memproses data dengan pop():");
  antrean.pop();
  antrean.display();

  antrean.pop();
  antrean.display();

  print("\n4. Menambahkan data baru:");
  antrean.enqueue("Dewi");
  antrean.enqueue("Eko");
  antrean.display();

  print("\n5. Memproses sisa antrean hingga habis:");
  while (antrean.isNotEmpty) {
    antrean.pop();
    antrean.display();
  }

  print("\n6. Uji pop saat antrean kosong:");
  antrean.pop();

  print("\n=================================================");
  print("           SIMULASI SELESAI DENGAN SUKSES        ");
  print("=================================================");
}
