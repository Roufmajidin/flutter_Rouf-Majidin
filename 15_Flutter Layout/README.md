 S
***Rangkuman*** 

# Flutter Layout

**mentoring/live session materi flutter layout**

Sesuai namanya layout adalah widget yang mengatur tata letak widget-widget.
layout dibagi menjadi:
1. Single Child Layout, single child layout adalah widget yang hanya memiliki satu widget (Child). Misalnya container, SizedBox, Widget Center.

       Container(
                      // width: 300,
                      height: 100,
                      // width: 200,
                      child: Text("ini adalah container")

       )




<!--  -->

            Center(
                  child: Text("ini adalah container")) 


<!--  -->

            SizedBox(
            child : Container()
            )


1. multi Child Layout, widget yang memiliki 2 atau lebih child, biasanya children,
misalnya Widget Column, Listview, Row, GridView. masing-masing dari widget ersebut bisa diisi dengan beberapa/lebih dari satu widget.
 
            
<!--  -->

            ListView(
                  children: [
                  
                  ListTile(),
                  ListTile(),
                  ListTile(),
            ])

<!--  -->

            Column(
                  children: [
                  
                 SizedBox()
                 SizedBox()
                 ListTile(),
            ])

<!--  -->

            Row(
                  children: [
                  
                 SizedBox()
                 SizedBox()
                 ListTile(),
            ])




pada column terdapat main axis alignment dan cross axis alignemnt.


<!--  -->

            Row(
            mainAxisAlignment : MainAxisAlignment.spaceBetween,
                  children: [
                  
                 SizedBox()
                 SizedBox()
                
            ])


<!--  -->
          //  teks rata disebelah kiri
            Column(
            crossAxisAlignment : CrossAxisAlignment.spaceBetween,
                  children: [
                  
                 SizedBox(child:Text("Text Kiri")),
                 SizedBox(child:Text("Text Kiri")),

                
                
            ])
pembahasan properti borderradius pada properti decoration di widget Container.
screen utils. sebuah package responsive design pada flutter

