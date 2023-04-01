
***Rangkuman*** 

 # **Flutter State Management (BLOC)**


**Bloc** adalah kepanjangan atau singkatan dari **Bussiness Logic Componenent**, pada Bloc ini terdapat **pemisahan** antara business Logic dan User Interface pada flutter.

BLOC memiliki keunggulan yaitu sangat *powerfull*, *testable* dan *simple*.

Pada prinsipnya, bloc ***menerima event*** ketika terjadi interaksi pada user interface, lalu ***data interaksi itu dianalisa serta deksekusi*** oleh Bloc itu sendiri,
kemudian akan ***menghasilkan state sebagai ouput*** dari interaksi yang diberikan dari proses interaksi tersebut.

pada Bloc juga terdapat ***Stream*** yang berfungsi *sebagai aktor utama pada bloc ini yang berjalan secara asynchronus.*

pada penerapan ke projek flutter kita, kita harus menambahkan ***dependency/package***

            flutter_bloc: ^8.0.1
            equatable: ^2.0.3

pada ***equtable*** ini bertujuan agar ketika proses rebuild yang terus berulang, maka package ini akan menahana proses rebuild yang tidak dibutuhkan lagi.

kita juga harus menginstal Extensi bloc dari Felix Angelov.
Pada stat bertujuan menyimpan beberapa state seperti menyimpan nilai counter, dan sebagainya.
Emit berfungsi untuk mengirim state tertentu.

pada file main.dart 
pada materialApp kita wrap widget dan ubah menjadi BlocProvider :

             return BlocProvider<ContactBloc>(
              create: (context) => ContactBloc(),
pada halaman/widget HomePage.dart misalnya, pada body : 
kita isikan atau wrap ke BlocBuilder

            body: BlocBuilder<ContactBloc, ContactState>(builder: (context, state) {
                  return SingleChildScrollView(
            }



