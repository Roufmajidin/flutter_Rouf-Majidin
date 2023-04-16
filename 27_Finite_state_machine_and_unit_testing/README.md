
***Rangkuman*** 

 # **Finite State Machine**

**Finite State Machine** adalah Suatu mesin yang memiliki sejumlah state

- IDDLE, saat tdak terjadi proses apapun
- Running, proses berjalan
- Error, proses gagal 
  

**Implementasi :**


1. _**Unit Test**_
   
   Unit Test, merupakan salah satu pengujian pada perangkat lunak dengan menggunakan fungsi atau method. Diadakannya unit test ini karena memastikan output suatu fungsi sudah sesuai atau berjalan dengan baik. Terdapat cara manual dan auto, perbedaannya yaitu jika dengan automatis menggunakan script yang menggunakan test runner sedangkan manual adalah proses yang dicek secara manual.
Pada penggunaannya, kita harus menambhakn dependency test pada dev_dependency.
            
            dev_dependency:
                  Test:


2. _**Mocking**_
   
   Proses yang memiliki keterikatan sistem eksternal yang bisa mempengaruhi proses pengujian. Mocking bertujuan agar dapat menghindari permasalahan pada projek flutter ini.

   Pada penerapannya, mocking ini membentuk suatu objek tiruan yang sama dengan input maupun output yang sama terhadap objek aslinya.

pada mocking ini menggunakan beberapa dependency, yaitu

      dev_dependencies :
            mockito:
            build_runner:

pada main.dart ***folder test*** (fungsi main):

            test("Get all name mocking", () async {
                when(apiFood.getMockingApiTest()).thenAnswer(
                (_) async => <FoodModels>[FoodModels(id: 1, name: "Test Mocking")],
                );
                // cek hasilnya ada atau tidak
                var f = await apiFood.getMockingApiTest();
                expect(f.isNotEmpty, true);
              });

lalu pada class ApiFood kita bisa tambahkan :


            Future<List<FoodModels>> getMockingApiTest() async {
                final response = await Dio(BaseOptions(connectTimeout: Duration(seconds: 3000)))
                .get('https://my-json-server typicode.com/hadihammurabi/flutter-webservice/foods');

                final List<dynamic> body = jsonDecode(response.data);
                List<FoodModels> foodMocking = (response.data as List<FoodModels>).map((e)
                => FoodModels(id: e.id, name: e.name)).toList();
              return foodMocking;
            }

lalu pada terminal kita ketikkan :

      flutter pub build_runner build

Untuk menjalankan Mock tersebut kita ketik pada terminal :


      flutter test
