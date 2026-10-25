class Queue<T> {
  final List<T> _items = [];

  // Menambahkan elemen ke antrian (belakang)
  void enqueue(T item) {
    _items.add(item);
    print("$item berhasil ditambahkan ke antrian");
  }

  // Mengambil dan menghapus elemen dari antrian (depan)
  T? pop() {
    if (isEmpty) {
      print("Antrian kosong! Tidak ada elemen yang dapat dihapus.");
      return null;
    }
    T removedItem = _items.removeAt(0);
    print("$removedItem dihapus dari antrian");
    return removedItem;
  }

  // Mengecek apakah antrian kosong
  bool get isEmpty => _items.isEmpty;

  // Mengecek apakah antrian memiliki isi
  bool get isNotEmpty => _items.isNotEmpty;

  // Melihat jumlah elemen dalam antrian
  int get length => _items.length;

  // Melihat elemen paling depan tanpa menghapus
  T? peek() {
    if (isEmpty) return null;
    return _items.first;
  }

  // Menampilkan isi antrian saat ini
  void display() {
    print("Isi antrian: $_items");
  }

  // Alias untuk display
  void tampilkan() => display();

  // Mengosongkan antrian
  void clear() {
    _items.clear();
  }
}

void main() {
  var antrian = Queue<int>();

  antrian.enqueue(10);
  antrian.enqueue(20);
  antrian.enqueue(30);
  antrian.display();

  antrian.pop();
  antrian.display();
}
