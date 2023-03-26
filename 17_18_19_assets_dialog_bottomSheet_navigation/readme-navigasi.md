
***Rangkuman*** 

 # **Navigations**

Navigations berfungsi untuk berpindah dari page ke page lainnya. terdapat navigator push dan pop.
- Navigator push, berfungsi untuk berpindah halaman selanjutnya.
- Navigator Pop, berfungsi untuk berpindah ke halaman sebelumnya.

Naviagtor push:

      onTap : (){
      Navigator.of(context).push(
      MaterialPageRoute(builder:(_) => conts ProfileScreen()))
      }

Terdapat juga ***navigator push named***, namun kita harus mendeklarasikkan route pada main.dart.
pada materialApp kita perlu menambahkan :
            routes: {
            '/': => const Home(),
            '/profile' => conts Profile()
            }
Lalu untuk berpindah ke halaman terkait kita bisa ***menggunakan route*** tersebut :

            Navigator.of(context).pushNamed('/profile');

Terdapat ***argument***, yang berfungsi sebagai isi dari halaman sebelumnya (parshing data). misalnya detail dari data yang di klik atau di tap().

            Navigator.of(context).pushNamed('/profile',
            arguments : 'ini isi datanya'
            );

Lalu pada halaman selanjutnya kita bisa menamngkap argument tersebut yang dikirim dari halaman sebelumnya dengan membuat satu data variabel, misalnya :

            final data = ModalRoute.of(context)!.settings.arguments as String;

dari argument ini kita bisa memanggil nilai atau data yang dikirimkan dari halaman sebelumnya. misalnya :

            text(data.toString()),
