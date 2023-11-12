# current_inventory
# Tugas 8
<p><b>Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!</b><br></p>
<p><b>Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!</b><br></p>
<p><b>Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!</b><br></p>
<p><b>Bagaimana penerapan clean architecture pada aplikasi Flutter?</b><br></p>
<p><b>Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial)</b><br></p>

# Tugas 7
<p><b>Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?</b><br>
State sendiri merupakan data yang dibaca secara synchronous saat widget di build dan dapat berubah pada saat widget sedang tetap jalan. Jadi, stateless widget adalah widget yang tidak memiliki state, atau tidak bisa berubah selama aplikasi sedang berjalan, sedangkan stateful widget adalah widget yang dapat berubah selama aplikasi sedang berjalan.</p>
<p><b>Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.</b><br>
  -Icon: Untuk memunculkan gambar icon yang berada di IconData. Di tugas, memunculkan icon yang digunakan dalam card.<br>
  -Scaffold: Untuk mengimplementasi desain struktur layout yang <i>basic</i>.<br>
  -Appbar: Memunculkan isi dari bar di atas, dan berfungsi sebagai tempat dimana teks 'judul' dimasukkan.<br>
  -Text: Memunculkan teks.<br>
  -SnackBar: Memunculkan teks dibagian bawah homepage saat suatu even spesifik terjadi (pemencetan card, dalam konteks tugas).<br>
  -SingleChildScrollView: Membuat badan dari HomePage bisa di scroll.<br>
  -Padding: Mengeset padding dari halaman, yaitu jarak ujung halaman dengan isinya.<br>
  -Column: Layout yang digunakan untuk menampilkan childnya (dalam konteks ini, teks dan card) secara vertikal.<br>
  -GridView: Digunakan untuk menampilkan isinya (di tugas, cardnya) dalam suatu layout grid.<br>
  -Center: Untuk membuat child dari suatu objek berada di tengah objek tersebut. Pada tugas, teks di bagian atas body berada di tengah.<br>
  -Container: Widget yang digunakan sebagai layout dan untuk mengeset properti seperti padding dan sizing bagi child didalamnya (di tugas, card).<br>
</p>
<p><b>Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial)</b><br>
  1. Membuat directory untuk project baru bernama current_inventory, dan men-<i>generate</i> aplikasi baru dengan menggunakan command prompt.<br>
  2. Di dalam folder lib, saya membuat file baru menu.dart. Di dalamnya, saya mengimport package yang diperlukan dan menghubungkan menu.dart dengan main.dart.<br>
  3. Class MyHomePage dipindahkan dari main.dart ke menu.dart, dan diubah dari stateful menjadi stateless. MyHomePageState dihapus karena tidak diperlukan.<br>
  4. Di luar class MyHomePage, saya membuat class untuk membuat card yang akan digunakan sebagai basis tombol, serta menambahkan propertinya sehingga dapat menampilkan apa yang saya inginkan.<br>
  5. Di MyHomePage dimasukkan list class pembuat card (InventoryItem) yang berisi dengan 3 obyek, sehingga di homepage muncul 3 card yang memunculkan snackbar jika dipencet.<br>
  6. Pertanyaan lain dijawab, lalu file di push ke GitHub.
</p>

<p>Sumber:<br>
-https://www.geeksforgeeks.org/difference-between-stateless-and-stateful-widget-in-flutter/<br>
-https://docs.flutter.dev/reference/widgets</p>
