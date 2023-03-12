
***Rangkuman*** 

# Introduction Flutter Widget




pada tanggal Rabu, 8 maret 2023 ini pembahasan mengenai ***flutter widget***, pada flutter widget terdapat 2 yaitu, statless widget dan statefulll widget. dimana ***stateless widget*** adalah widget yang tidak berpengaruh pada perbuahan suatu data, sedangkan ***stateful widget*** adalah berpatokan pada perubahan data, pada statefull ini memilik state dan widget (dimana state adalah untuk perubahan data, misalnya terdapat fungsi ubahStatus() yang bertujuan mengubah ceklist pada suatu task di halaman tersebut). pada flutter terdapat built-in widget atau bawaan flutternya yaitu MaterialApp yang berfungsi sebagai pembentuk suatu halaman.

pada ***stateless widget*** mempunyai kata kunci stl atau satelessWidget, pada widget ini tidak bisa mengalami perubahan data.

            class contohStatelesWdiget extends StatelessWidget {
       const contohStatelesWdiget({super.key});

       @override
       Widget build(BuildContext context) {
    return Container();
       }
      }
pada ***statefull widget*** bisa menerima ketika perubahan suatu data itu terjadi, dan memiliki widget dan state.

            class contohStatefull extends StatefulWidget {
      const contohStatefull({super.key});
      @override
      State<contohStatefull> createState  () => _contohStatefullState();}
            
            class _contohStatefullState extends State<contohStatefull> {
     @override
     Widget build(BuildContext context) {
    return Container();
  }
}