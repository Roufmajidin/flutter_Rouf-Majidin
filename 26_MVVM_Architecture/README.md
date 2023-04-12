
***Rangkuman*** 

 # **MVVM Architecture**

Definisi :


**MVVM Arsitektur** adalah clean arstektur yang *bertujuan memisahkan antara logic dengan tampilan* kedalam view model. Memiliki struktur Models, View, View model. Models adalah bentuk data dari suatu sumber misalnya REST API, View adalah tampilan, dan view models berfungsi sebagai  logic terhadap tampilan-tampilan (Views).

**Terdapat :**

- ***Models***, models berfungsi sebagai sumber data / penampung type data yang akan digunakan yang bersumber dari API misalnya.

- ***View***, didalamnya terdapat views atau halaman-halaman aplikasi flutter kita.

- ***View_models***, berfungsi sebagai logic antara view dan models.
Juga menyimpan data-data dan logic yang dibutuhkan.


**Keuntungan** :

- ***Testability***, pengujian yang terpisah antara tampilan dan logic.

- ***Reusability***, jika terdapat alur yang sama, maka bisa menggunakan models yang sama/yang sudah ada.

- ***Maintability***, mudah dalam development selanjutnya, misalnya aplikasi kita ini akan mengalami pengembangan. maka dari itu dengan MVVM ini akan sangat mudah dalam tahap pengembangan selanjutnya.



