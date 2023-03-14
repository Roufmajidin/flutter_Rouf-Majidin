
***Rangkuman*** 

# Flutter Platform Widget


pada pertemuan Senin, 13 maret 2023 ini membahas materi ***Flutter Platform Widget***.


flutter platform widget terdapat **materialApp** yaitu *widget dasar* bertujuan sebagai *pembungkus seluruh widget* lainnya pada aplikasi flutter pada sistem android.
pada penggunaannya pula kita diharuskan mengimport 

      import package:flutter/material.dart
material app memiliki Scaffold yang terdiri dari
 - appbar, 
 - drawer, 
 - body, 
 - dan navigationBar.
  
Selain MaterialApp terdapat ***CupertionApp*** yaitu widget yang berjalan pada iOS, pada CupertinoApp kita mengimport 

      import package cupertino.dart

***perbedaan*** antara material app dan cupertino app adalah berjalan pada sistem yang berbeda, pada cupertinoApp tidak bisa menggunakan
themeData seperti pada material app, bisa saja tapi harus dikemas dalam bentuk variabel seperti contoh CupertinoData.raw();