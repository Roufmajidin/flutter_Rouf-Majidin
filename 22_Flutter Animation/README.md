
***Rangkuman*** 

 # **Flutter Animation**

***Animasi/animations*** pada flutter ini bertujuan agar projek flutter kita menjadi lebih menarik dengan berbagai style dari transisi maupun style flutter widget kita yang bergerak.

***implict Animation,*** pada implict animation adalah animasi yang sudah ada flutter itu sendiri/fitur bawaan seperti opacity.

terdapat ***transisi*** animasi yaitu perpindahan dari halaman sebelumnya ke selanjutnya dengan gaya transisi yang kita inginkan misalnya fadeIn, out, slider dan sebagainya.
pada penggunaannya, kita perlu menambhakn transisi ketika navigator.push. misalnya :

            Navigator.push(
                        context,
                        PageRouteBuilder(
                          transitionDuration: const Duration(seconds: 1),
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  DetailPage(indexImage: index),
                          transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
                            return SlideInDown(child: child);
                          },
                        ));


selain transisi slider, ada juga transisi scale, yaitu perubahan ukuran dari A ke B misalnya.
