import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:intl/intl.dart';
import 'package:open_file/open_file.dart';

class PickerWidget extends StatefulWidget {
  const PickerWidget({super.key});

  @override
  State<PickerWidget> createState() => _PickerWidgetState();
}

class _PickerWidgetState extends State<PickerWidget> {
// tampung
  DateTime _dueDate = DateTime.now();
  final currentDate = DateTime.now();
  Color _currentColor = Colors.orange;
//
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Interactive Widget"),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            dateWidget(context),
            colorWidget(context),
            fileWidget(context),
          ],
        ),
      )),
    );
  }

  Widget dateWidget(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Date",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppTheme.textColor),
            ),
            TextButton(
              child: const Text(
                "Select",
                style: TextStyle(fontSize: 16),
              ),
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
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
          ),
          child: Text(
            DateFormat('dd-MM-yyyy').format(_dueDate),
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: AppTheme.textColor),
          ),
        ),
      ],
    );
  }

  Widget colorWidget(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Color",
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppTheme.textColor),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 180,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: _currentColor, borderRadius: BorderRadius.circular(12)),
          ),
        ),
        GestureDetector(
          onTap: () {
            print("memilih Warna");
            showDialog(
                context: context,
                builder: (context) {
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
                });
          },
          child: Center(
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: _currentColor, borderRadius: BorderRadius.circular(8)),
              child: const Text(
                "Pick Colors",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget fileWidget(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Pick File",
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppTheme.textColor),
        ),
        Center(
            child: ElevatedButton(
                onPressed: () {
                  _pickFile();
                },
                child: Text("Pick and Open File")))
      ],
    );
  }

  void _pickFile() async {
    final result = await FilePicker.platform.pickFiles();

    if (result == null) null;
    final file = result!.files.first;
    _openFile(file);
  }

  void _openFile(PlatformFile file) {
    OpenFile.open(file.path);
  }
}

class AppTheme {
  static final Color textColor = Color.fromARGB(255, 69, 69, 69);

  static final ThemeData themeData = ThemeData(
    primaryColor: textColor,
  );
}
