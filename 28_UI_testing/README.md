
***Rangkuman*** 

 # **UI Testing / Widget Testing**

**UI Testing** Merupakan suatu proses pengujian widget/tampilan pada aplikasi yang bertujuan memastikan aplikasi kita tidak terdapat widget/struktur tampilan yang salah/failure.
Dengan kata lain ***Widget testing***, pada proses testing ini kita menulis beberapa kode apakah widget tersebut ada dan mathcing, proses ini dijalankan secara automatis.

***Keuntungan*** dalam UI Testing ini adalah 
- Memastikan widget widget/tampilan sesuai dengan keseharusannya, 
- parameter atau aturan yang diikuti pada saat aplikasi ini terjadi perubahan / dilakukan perubaha pada widget itu sendiri.
- Memastikan interaksi bisa diterima oleh user dengan baik.
  
Pada proses UI Testing ini kita harus menuliskan dependency atau package pada pubspec.yaml yaitu 

             dev_dependencies :
                    flutter_test:


ketika akan melakukan testing, kita harus membuat file baru dengan akhiran _test. misalnya home_page_test.dart pada <**folder** **test**>

1. tulis fungsi main, yaitu :

            void main(){

          
            }
2. Lalu tambahkan pada blok fungsi main() :

          
           testWidgets("text Judul", (WidgetTester tester) async {
              await tester.pumpWidget(const MaterialApp( 
              home: HomePage(),
            ));
      
              expect(find.text("Create new Contacts"), findsOneWidget);
          });
                  
         

3. Selanjutnya pada terminal tuliskan ***flutter test***, jika berhasil akan memunculkan log All Test passed
   atau biasanya pada void main ada ikon play/debug, klik saja, nanti akan memuncullakn pesan pada bagian terminal VSCode.
