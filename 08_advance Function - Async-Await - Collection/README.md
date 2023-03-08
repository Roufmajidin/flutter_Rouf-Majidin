
***Rangkuman*** 

# Advance Function, Async Await, Collection Dart
  Senin 27 Februari 2023.

*Pada pertemuan tanggal Senin, 27 Februari 2023* membahas mengenai **Collection**.

***Collection*** merupakan sekumpulan data dari sebuah nilai pada variable.
terdapat juga Mutable dan Imutable,

- **Mutable** bisa dirubah atau list tersebut bisa kita lakukan perubahan
misalnya terdapat sebuah variable list    

      desert = ['satu','dua','tiga'];
Lalu pada baris berikutnya kita menulis variable yang sama, darisitu tidak akan ada error akibat variable yang sama, namun bagaimana kondisi kata kunci sebelum variabelnya dulu.
- **Immutable**, sedangkan Immutable bersifat  itu constan/ statis (tidak bsa dilakukan perubahan,biasanya menggunakan final, misalnya 
  
      final desert = [' ',  ' ', ' '];


Pada ***immutable*** tidak bisa diassginment menggunakan varible yang sama, namun bisa dimodifikasi dengan remove, add, dan sebagainya.
Misalnya : 

      desert.add('kata');

- Membahas juga mengenai ***spread operator (widget layout (rows, column, stack)***, berfungsi sebagai manupulasi ).
Terdapat collection for yakni bertujuan untuk mengahasilkan list lainnya.
Misalnya:

      const deserts [“gobi”, “sahara”,” artic”]
Lalu kita menambhakn pada baris berikutnya:

      var bigDesert = ['Arabia', for (var desert in deserts) desert.toUppercase()],
*Pembahasan* : 
- **Set** digunkan dalam membuat element yang unik yang tidak dapt duplikat;
Union, menggabungkan beberapa sett pada list yang bertujuan menhasilkan nilai uni dari gabungan tersebut.

**a. intersect**
misalnya :

      final Set<int> setA = {0, 2, 3, 4}
      final Set<int> setB = {0, 4, 8, 3}
      final intersec = setA.intersection(setB)


**b. Union** 
          
      final Set<int> setA = {0, 2, 3, 4}
      final Set<int> setB = {0, 4, 8, 3}

      final u = SetA.union(setB)
      print(u);


**d. Map**
map adalah data sturktur yang menyimpan data pasangan yaitu key dan value
dalam penggunaannya bisa menggunakan kata kunci MAP.
Misalnya:

      final Map<String, int> mapKosong = {};
      final mapKosong ={};
      final myMapp =  <String, int>{};
      inisialissasi nilai kedalam map :
      final myMapp = <String, int>{
      'cakes' : 20
      'donuts' : 10
      };

**e. Operation pada Map**

      final negara = <String, String>{
      'Indonesia' : "Jakarta"
      'India' : "New Delhi"
      };
      pangggil variabel mapnya
      negara['Indonesia];
      

menambahkan asignment nilai pada variabel Map diatas dengan :
     
      final negara = <String, String>{
      'Indonesia' : "Jakarta"
      'India' : "New Delhi"
      };

      negara['malaysia'] = 'Kuala Lumpur';
      print(negara);
