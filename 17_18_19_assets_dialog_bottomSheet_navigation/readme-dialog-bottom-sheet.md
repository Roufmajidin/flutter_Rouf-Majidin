
***Rangkuman*** 

 # **Dialog Bottom Sheet**

***Dialog*** pada penggunaan aplikasi task mangement berfungsi sebagai alert/step berikutya dari interaksi sebelumnya, misalnya pada aplikasi task management ini kita akan menghapus task, maka ketika kita meng ontap() widget delete akan memunculkan dialog seperti "apakah anda yakin akan menghapus atau tidak". sangat penting pada penggunaan dialog ini pada penerapan task management tersebut.

terdapat ***Dialog*** atau ***Alert Dialog*** yang berfungsi sebagai informasi pengguna mengenai step terkait, seperti akan menghapus data dan sebagainya. Dari alert dialog ini juga bisa diimplementasikan / dimasukkan kolom inputan untuk meminta inputan dari user.
pada penerapannya, widget ini menggunakan fungsi showDialog()
misalnya :

            onPressed: (){
            showDialog(
            //terdapat context dan builder
            builder: (context) => AlertDialog(
            //properti content dan action sebagai isi dan fungsi pada alert dialog

            content :
            action :[
            ]

      ))
      }


**BottomSheet**

***Bottom sheet*** adalah widget yang ketika di tap() muncul dari bawah. pada Bottom sheet ini menggunakan fungsi showModalBottomSheet() yang memiliki property builder dan context.

      onPressed: (){
      showModalBottomSheet(
      context : context,
      builder : (context) {
      return Container(
      // isi bottom sheet
            Text("Hallo"))
      }
      );}
