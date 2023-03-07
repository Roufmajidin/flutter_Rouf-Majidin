
***Rangkuman*** 
# Branch, Loop, function
  Rabu 22 Februari 2023

***Percabangan (branch) / logika  if else*** yakni  dimana variable di cek atau dikomprasi dengan kondisi lainnya. 

      if($a == 2){
      print ("variabel a = 
      Dua")
      else{
      print("variabel a != Dua")
      
      }
Terdapat Ternary Operation.
Perbedaannya, kita tidak bisa mengakses variable local jika kita memanggilnya diluar class function. Pada control flow juga terdapat ternarry operation dimana pada penggunaannya yaitu menggunakan if dan else atau bisa juga menggunakan tanda tanya (?) dan titik dua (:). Namun pada ternearry operation ini tidak bisa memasukkan lebih dari 2 kondisi, kalau if else terdapat else if
Terdapat juga switch, pada switch ini terdapat kata kunci switch case, sama saja seperti if else, jika tidak ada kondisi yang sesuai dengan kondisi maka pada key default: adalah alur yang akan dijalankan.

***Pada minggu ini juga belajar tentang perulangan,*** dimana  perulangan pada dart terdapat
-  for loop, 
-  for in, 
-  while (selama), 
-  dan Do while . 

Namun pada **while** looping akan mengalami infint loop, terus menerus sampai kondisi terpenenuhi.

***Function***
function atau fungsi  adalah sebuah wadah suatu operasi atau sekumpulan perintah yang dipanggil pada main() dengan hanya memanggil class atau fungsinya. 

misalnya terdapat sebuah fungsi 

            hitung_luas(){
           
            int a = 12;
            int b = 2;
            var rumus = a * b;

            }. 

jadi, pada body main kita cukup memanggil fungsi tersebut.
            
            void main(){
            
            hitung_luas();
            
            }

