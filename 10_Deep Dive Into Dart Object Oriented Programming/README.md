
***Rangkuman*** 

# Deep Dive Into Dart Object Oriented Programming


***_________________*** 

Pada **OOP** terdapat beberapa *komponen*, diantaranya :
- Constructor, 
- Inheritance,
- Overriding,
- Interface, 
- Class abstract,
- dan lainnya.
  

*****Constructor***** adalah method yang akan dijalankan pada saat pembuatan objek, ketika objek tersebut kita panggil ketika akan menjalankannya, maka secara otomatis akan terdapat key untuk mengisikan argument dadalamnya.

misalnya :

            class Planet {
            var suhuAtmosfer;
            var diameterPlanet;

            Planet() {
                  
                  suhuAtmosfer = 0;
                  diameterPlanet = 0;

            }

            }
*****Inheritance*****, clas yang sudah ada dipakai kembali pada class lain, misalnya terdapat sebuah class kucing dengan memiliki extends yaitu pewarisan dari class Hewan.

      class Saturnus extend Planet{

            Saturnus(){
                  suhuAtmosfer = 24000;
                  diameterPlanet = 45000;
            }
      }

*****Overriding*****, proses menulis kembali method yang sudah ada (superclass), namun prosesnya bisa saja berbeda dengan yang sudah ada.

misalnya :

            class Saturnus extends Planet{
            
                  @override
                        ukuranPalnet(){
                        print("memiliki Ukuran 42,7 Km")
                        }

                  @override
                  suhuAtmosfer(){
                        print("Suhu Atmosfer -140 derajat Celcius.")
                        }
             }

*****Abstract class*****, misalnya pada class kambing harus ada method ‘bersuara’ dan ‘bernapas’. Maka kita harus melakukan abstraksi pada class hewan, dalam kata lain abstraksi class ini adalah method yang harus ada pada suatu class lain.

Misalnya :

       class Saturnus extends Planet{
            
            @override
            ukuranPalnet(){
                  print("memiliki Ukuran 42,7 Km")
            }

          
       }

*****Generics*****, Bertujuan agar bisa menerima data dengan type data yang berbeda.

misalnyaa :



            class Planet<T>{
              var isi;
              WarnaPlanet(T i){
                  
                  isi = i;
              }
            }

      lalu kita memanggilnya pada class main(), dengan :

            void main(){
            
             var p = WarnaPlanet<String>('Planet dengan warna Cream Kecoklatan');
             print(p.isi);

             var p2 = WarnaPlanet<int>('Planet dengan Ukuran 241 KM');
             print(p2.isi);
            }



*****Interface*****, biasanya menggunakan implement (berbeda dengan abstract class menggunakan extends). Dan pada interface ini semua method wajib dilaukukan override.

misalnya :


            class Saturnus implements Planet{
            
            @override
            ukuranPalnet(){
                  print("memiliki Ukuran 42,7 Km")
            }

          
       }


<h6>*Rouf Majidin*.</h6>