
***Rangkuman*** 

# Object Oriented Programming 1


***Object Oriented Programming*** merupakan Paradigma pemrograman berorientasi objek yang bertujuan merelealisasikan objek didunia nyata kedalam program. 
manfaat OOP ini adalah mudah dalam ketika program kita di upgrade atau akan ditambahkan suatu fitur dan mudah di troubble shoot.


***Komponen Object Oriented Programming***

-  ***class***, abstraksi dari sebuah objek dan memiliki property dan method. 
misalnya 

            class Mobil {
            //property keceptan
            var kecepatan = 150
            }


- ***Method***, suatu perintah atau fungsi yang harus dikerjakan pada suatu class.
misalnya pada class mobil kita akan memberi fungsi tambahKecepatan.

      class Mobil {
            var kecepatan = 0;
           // method
            void tambahKecepatan(){
            kecepatan + 50;
      print("kecepatan bertambah $kecepatan");
      }}
- ***property***, merupakan suatu ciri-ciri dari class biasanya dideklarasikan melalui variabel
dalam penulisannya diawali dengan nama variabel
misalnya clas Mobil memiliki properti kecepatan, jenis mesin, dan sebagainya.
            
            class Mobil {
            var kecepatan = 300;
            var jenis_mesin = "jenisMesin";
            }