
***Rangkuman*** 

 # **Introduction REST API - JSON serialization/deserialization**

***REST API*** memiliki kepanjangan / singkatan dari Representational State Transfer Aplication Programming Interface. Terdapat HTTP Request yaitu Client bisa melakukan proses create, read, update, maupun delete data yang akan dikembalikan oleh Server dalam bentuk JSON.

Pada prinsipsnya, client mengirimkan permintaan untuk direponse oleh server. 
***HTTP*** yaitu ***protokol*** yang bertujuan sebagai jembatan dalam mengirim suatu data pada web. 

***
1. **Method**
Terdapat beberapa method yaitu GET, PUT, POST dan DELETE

2. **URL**,
Alamat Page yang diakses

3. **Body**, data yang dikirim ketika request

4. **Status code**, kode ketika response itu terjadi

5. **Header**, Informasi tambahan mengenai response dari server.
***

**Dio**

***Dio*** adalah ***HTTP Client***, pada penggunaannya, kita harus menginstal package pada aplikasi fluttter kita (pubspec.yaml)

      dio: 

***Serialisasi JSON,***

Json adalah Javascript Object Notation, json digunakan pada proses REST API. Pada Prosesnya yang semual List/map diubah (serialisasi) menuju JSON.


***Deserialisasi JSON,***

kebalikan dari serialisasi, yang semula JSON di convert ke list atau Map.