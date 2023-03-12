
***Rangkuman*** 

# Installation Command Line Interface and Package Management in Flutter


pada pertemuan jumat, 10 maret 2023 ini membahas materi ***Installation Command Line Interface and Package Management in Flutter***.

***Cli*** adalah suatu alat yang bertujuan untuk berinteraksi dengan Flutter SDK, terdapat beberapa command pada CLI flutter yaitu *flutter doctor, flutter doctor, flutter pub, dsb.*

***flutter doctor*** adalah untuk menampilkan beberapa informasi terkait aplikasi flutter kita.

            // sintax
            flutter doctor -v
***flutter pub,*** menambhkan paket atau packages pada aplikasi flutter kita dengan sintax flutter pub add "namapaket".

      
            // sintax
            flutter pub add alert

            //alert adalah nama paket yang akan ditambahkan
***flutter build***, bertujuan untuk mendeploy aplikasi flutter kita dalam bentuk .apk ataupun extensi lainnya.

            // sintax
            flutter build apk

            //build projek flutter kita ke android
***flutter clean,*** digunakan untuk memperingan atau memperkecil ukuran projek flutter.

            //sintax
            flutter clean
***flutter emulator,*** menampilkan opsi emulator.

***packages manegement***, berfungsi sebagai wadah beberapa paket atau packages pada aplikasi kita, kita bisa menggunakan sintax flutter pub add "namapaket", lalu klik enter dan cek pada pubsppec.yaml.