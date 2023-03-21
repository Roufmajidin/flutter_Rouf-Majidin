
***Rangkuman*** 

 # **Flutter Form (Form Input Button) and Advance Form**



Widget Form adalah widget User interface (UI) untuk user dapat menginputkan huruf, number,color, tanggal, atau opsi lain dan sebagainya. 
- ***Date Picker*** adalah widget User Interface agar user bisa menginputkan tanggal. misalnya fitur pemesanan atau reservasi, biasanya user menginputkan untuk tanggal berapa dalam reservasinya.
      
      // pada blok state buat variabel  
      DateTime _dueDate = DateTime.now();
 <!--  -->
 
      onPressed: () async {
        final selectDate = await showDatePicker(
          context: context,
          initialDate: currentDate,
          firstDate: DateTime(1990),
          lastDate: DateTime(currentDate.year + 5));
          setState(() {
            if (selectDate != null) {
              _dueDate = selectDate;
             } else {}
          });
         },

<!--  -->
- ***File Picker***, untuk menginputkan file dokumen, gambar, video, atau media lainnya.
  pada file picker ini, kita harus menginstal atau add dependency yaitu *file_picker* dan *open_file*.
fungsi untuk file picker :
    
   
      void _pickFile() async {
        final result = await FilePicker.platform.pickFiles();
        if (result == null) null;
        final file = result!.files.first;
        _openFile(file);
      }
      void _openFile(PlatformFil file) {
          OpenFile.open(file.path);
        }
      }
- ***Color picker***, widget UI agar user dapat menginputkan color. Misalnya  pemesanan barang dengan ketentuan user harus menginpiutkan warna barang dalam proses check outnya.
Misalnya :

        // pada blok State janganlupa membuat variable 

        Color _currentColor = Colors.orange;
<!--  -->

        
        return AlertDialog(
          title: const Text("Pilih Warna"),

          content: ColorPicker(
              pickerColor: _currentColor,
              onColorChanged: (color) {
                setState(() {
                  _currentColor = color;
                });
              }),

          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Save"))
          ],
         );