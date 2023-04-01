
***Rangkuman*** 

 # **Flutter State Management (Provider)**
Terdapat ***state*** yang berfungsi sebagai wadah terhadap perubahan suatu data. State ini dinamakan statefull widget. Global berarti keseluruhan. ***Global state*** berfungsi agar suatu state dapat digunakan oleh banyak widget. 
Pada Mentoring ini juga, membahas mengenai Provider. Dalam instalasinya kita harus menambahkan satu package yang bernama provider pada file pubspec.yaml.



              provider: ^6.0.5

Pada penerapan pembuatan ***state provider*** ini, terdapat class Contact yang memiliki turunan/pewarisan (extends) dari provider itu sendiri.

pada clas contact ini terdapat satu variable dengan tipe data List contact. lalu pada class contact ini juga terdapat satu fungsi addData() yang berfungsi agar list tersebut bisa dilakukan penmbahan data contact.

Pada provider class contact ini janganlupa kita menambhakn satu fungsi yang bernama notifyListeners() yang berfungsi agar perubahan tersebut tersampaikan dan terjadi perubahan.

MultiProvider bertujuan agar provider yang kita buat bisa digunakan pada file/widget/class lain. seperti provider contact tersebut diberi nama Form_manager
pada main.dart tambahakan 

             return MultiProvider(
             providers: [
                  ChangeNotifierProvider(create: (_) => FormManager()),
                  ChangeNotifierProvider(create: (_) => ImageManager()),
            ],
            child : MaterialApp()
            );

pada penerapan provider ini juga, misalnya pada projek flutter kita terdapat satu widget ataupun class yang terdapat bahwa widget tersebut dinamis (terdapat perubahan data ketika ada interaksi user), maka pada class tersebut kita tambahkan :

    final contactProvider = Provider.of<FormManager>(context, listen: true);

Dan pada propertu body nya gunakan  

      Consumer<FormManager>

pada consumer<> terdapat property builder juga.

      builder: (context, contactProvider, _) => SingleChildScrollView();



