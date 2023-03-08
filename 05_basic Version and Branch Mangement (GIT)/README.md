## **Rangkuman**

_Version and branch management
versioning_, berfungsi melakukan pelacakan pengaturan versi suatu perubahan suatu program (tracking perubahan)
bertujuan mentracking suatu kesalahan dalam project
megentaui siapa yang mengubah, apa saja yang dirubah. 

### Tools

_VCS (version controll system)_
  
  ada sejak tahun 1972 _(UNIX)_
  dalam memanajemennnya bersifat localize (berbasis lokal namun tetap ter tracking pada local)
  lalu naik setingkat lebih tinggi yaitu centralize (terpusat, internet ataupun lainnya, misalnya mengedit suatu projek dalam satu projek secara bersamaan). namun sangat bergantung pada server. jadi server harus stanby, jika tidak maka kegiatan developt tidak akan berjalan.
  
  lalu pada tahun 2005 ada GIT yang bersifat  
  Distributed. pada penerapannya ketika kita mendevelopt suatu aplikasi atau lainnya, maka pada lokal dan diserver ada. melakukan perubahan pada lokal sebelum di push/kirim ke pusat. 

  ### **Panduan Github**
  - file file yang sifatnya memberatkan GIT, tidak usah di upload, cukup dilokal saja.
  - ketika membuat privat repository, maka itu akan bersifat pribadi atau hanya kita atau yang memiliki akses saja.
  - choose lisence, open project misalnya developer lain bisa mendownload atau modifikasi (terdapat beberapa aturan dan bisa dipilih aturan mana yang akan dipakai).
  
   ### syncronize Github ke lokal project 
    git init, membuat satu folder .git (tahap inisilisasi)
    git remote add remote <nama_remote_server> (konek ke repository baru) --> default biasanya origin main
    git add .
    git commit -m "pesan_commit"
    git push origin <nama_branch> --> default origin main.
    
