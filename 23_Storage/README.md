
***Rangkuman*** 

 # **Storage**

Storage pada flutter terdapat Penyimpanan Lokal/ local Database (SQLite) dan Shared Preferences.

***Penyimpanan Lokal*** bertujuan agar adanya efesiensi dalam penggunaan internet. Misalnya ketika aplikasi flutter ini tidak terhubung ke internet, maka dengan adanya local storage ini, memungkinkan kita bisa menggunakan aplikasi in tanpa adanya akses internet.

***Shared Preferences,*** penyimpanan lokal ini memiliki key dan value pada datanya. type data pada shared preferences ini yakni angka, teks  maupun boolean. 

Pada penggunaan Shared preferences ini kita harus menginstal atau menambahkan package yaitu shared preferences.

             shared_preferences: ^2.0.12
            
***SQLite*** / local database, penyimpanan data dalam bentuk local, ketika aplikasi terdapat proses menyimpan, maka proses ini menyimpan data kedalam device kita. Sama seperti Localhost/xampp, penyimpanan ini terdapat fitur create data, update, delete.


***Pada Local database seperti SQLite*** juga kita harus menambahkan dependensi di pubspec.yaml, yaitu :

   
            sqflite: ^2.2.6
            path: ^1.8.1


seperti biasa, kita *inisialisasikan* dengan menambahkan variabel pada widget. misalnya penerapan pada sistem login aplikasi kita.

            late SharedPreferences loginData;
            late bool newUser;
            var formKey = GlobalKey<FormState>();

Tambahkan juga method initState, agar fungsi ceklogin akan dipanggil pertama kali ketika widget itu dipanggil.



