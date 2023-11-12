# current_inventory
# Tugas 8
<p><b>Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!</b><br>
Proses navigasi halaman di flutter dengan widget Navigator bekerja seperti suatu stack. Page/route yang berada di paling atas 'stack' merupakan yang ditunjukkan. Navigator.push() dan Navigator.pushReplacement() keduanya memasukkan suatu route ke atas stack, dengan perbedaan Navigator.push() menambahkan route ke atas stack, sedangkan Navigator.pushReplacement() mengubah route yang paling atas menjadi route yang mau ditaruh diatas.<br>
- Contoh Navigator.push(): Saat ingin mengimplementasikan page yang memiliki fungsi back, seperti list item yang memiliki tombol untuk kembali ke halaman sebelumnya (diasumsi halaman list item bisa diakses dari beberapa halaman berbeda). Ini menggunakan Navigator.push() dan bukan pushReplacement karena untuk kembali ke halaman sebelumnya, route yang ada sebelum route list item di push harus tetap ada agar jika dilakukan pop bisa kembali ke halaman itu.<br>
- Contoh Navigator.pushReplacement(): Jika ingin mengimplementasikan suatu fungsi dimana user tidak perlu/tidak diperbolehkan kembali ke halaman sebelumnya. Sebagai contoh, untuk masuk suatu halaman login digunakkan Navigator.pushReplacement() karena setelah suatu user telah login dengan benar, mereka seharusnya tidak kembali ke halaman login, kecuali sudah logout lagi.</p>
<p><b>Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!</b><br>
- Single-child layout widgets: Layout widget yang hanya bisa memiliki satu child, seperti Align(), AspectRatio(), Container(), dan Padding(). Biasanya digunakan sebagai wrapper untuk widget lain, untuk mengubah posisi, mengubah margin, dll.<br>
- Multi-child layout widgets: Layout widget yang bisa memiliki lebih dari satu child, atau children, seperti Column(), Row(), Stack(), dan Table(). Biasanya digunakan untuk menaruh banyak widget di dalam suatu layout, yaitu sebagai suatu list horizontal/vertikal, didalam suatu grid, dll.<br>
- Sliver layout widgets: Layout widget yang merupakan bagian dari <i>scrollable area</i> yang digunakan untuk membuat layout scrolling yang unik. Widget sliver layout sering digunakan dalam pembuatan suatu ScrollView karena hanya merender konten yang sedang dilihat oleh user, sehingga memiliki performance yang baik.</p>
<p><b>Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!</b><br>
- TextFormField: Suatu TextField yang diwrap di dalam FormField yang digunakan untuk menginput dan save data.<br>
- Form: Form digunakan sebagai container untuk mengroup 3 TextFormField yang digunakan pada aplikasi, jadi seluruh form field dimunculkan dan di save secara bersama (karena merupakan child dari Form).</p>
<p><b>Bagaimana penerapan clean architecture pada aplikasi Flutter?</b><br>
Penerapan clean architecture di aplikasi flutter membagi aplikasi menjadi beberapa bagian yang memiliki satu tugas (bisa general/spesifik) dan melakukan tugas itu dengan baik. Ini adalah prinsip <i>Seperation of Concerns</i> yang diimplementasi di flutter dengan membagi aplikasi menjadi beberapa layer berdasarkan fungsinya. Layer yang didalam tidak memiliki dependency terhadap layer yang, jadi setiap layer didirikan di atas layer yang sebelumnya. Layernya tidak selalu sama untuk setiap aplikasi, tapi suatu contoh adalah:<br>
- Domain Layer<br>
Layer paling dalam yang memiliki kode untuk aplikasi bisnis, seperti use-case, entities, dan repositori.<br>
- Presentation Layer<br>
Berisi kode yang digunakan untuk mengakses data aplikasi dari repositori.<br>
- Data and Platform Layer<br>
Layer yang berisi data <i>source code</i>, akses ke database lokal, dan kode untuk UI. </p>
<p><b>Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step!</b><br>
<b>Pembuatan halaman formulir tambah item baru:</b><br>
  Saya membuat berkas itemlist_form.dart yang berisi widget form dan text form field yang bisa digunakan untuk menginput dan save.<br>
<b>Mengarahkan user ke halaman formulir tambah item ketika mengeklik "Tambah Item" pada halaman utama:</b><br>
  Pada menu.dart, dibuat if dimana jika nama dari InventoryItem adalah "Tambah Item", akan jalan Navigator.push() route halaman formulir item, sehingga user akan diarahkan ke halaman formulir item jika memencet card Tambah Item.<br>
<b>Memunculkan data sesuai isi dari formulir yang diisi dalam sebuah pop-up setelah menekan tombol Save pada halaman formulir tambah item baru:</b><br>
  Membuat fungsi onPressed() yang mengambil context dari input form, dan memunculkannya dengan menggunakan showDialog() untuk membuat AlertDialog (pop-up) yang berisi contextnya.<br>
<b>Membuat drawer:</b>
  Membuat berkas left_drawer.dart dan memasukkan widget drawer didalamnya yang berisi satu column dengan dua list tile, satu "Home Page" yang menuju ke halaman utama dan satu "Add Item" yang menuju ke halaman formulir tambah item.<br>
</p>

<p>Sumber:<br>
https://betterprogramming.pub/flutter-clean-architecture-test-driven-development-practical-guide-445f388e8604</p>
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
