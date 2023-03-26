
***Rangkuman*** 

 # **Assets**

***Asets*** adalah sekumpulan file yang dibundled dan ketika di deploy didalam aplikasi flutter ini.
pada assets ini bisa berisikan file image, fonts, maupun data json. pada praktiknya file file assets ini perlu di deklarasikan pada file pubspec.yaml agar bisa dipanggil ketika pembuatan widget tertentu seperti widget image

pada pemanggilan widget ***image*** kita bisa menggunakan widget.asset

            Image(image : AssetImage('<Direktori image nya>'))


pada assets juga bisa kita sisipkan ***fonts***, fonts berfungsi untuk menambahkan gaya huruf pada aplikasi flutter. Bisa juga menggunakan package misalnya package googl_fonts.
Dalam penerapan pada widget misalnya :

            Text("Hallo", style: GoogleFonts.rowdies())

bisa juga kita menggunakan *custom font*, pada penerapannya kita bisa mendeklarasikannya pada pubspec.yaml, misalnya :

            fonts:
            - family: Schyler
            fonts:
            - asset: fonts/Schyler-Regular.ttf
            - asset: fonts/Schyler-Italic.ttf
        

