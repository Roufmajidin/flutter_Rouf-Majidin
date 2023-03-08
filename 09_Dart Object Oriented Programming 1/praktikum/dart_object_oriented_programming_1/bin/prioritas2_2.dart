import 'dart:io';

class Course {
//atribut
  var judulCourse = "UCIC Learning System";
  var deskripsi = "UCIC Learning System yang bersahaja";
  Map student = {
    "nama": "Rouf majidin",
    "kelas": ["Pem. Internet", "Pem. Mobile"],
  };

  // List<String> kelas = ["Pem. Internet", "Pem. Mobile"];

  tambahKelas(String kls) {
    student['kelas'].add(kls);
    print("");
    print(student);
  }

  deleteKelas(String kls) {
    // student.remove('kelas' == kls);
    student['kelas'].remove(kls);
    print("$kls Terhapus");
    print("");

    print(student);
  }
}

void main() {
  // var data = [];
  var course = Course();
  // print(Course().student);
  // print(course.kelas);
  course.tambahKelas("IPA");

  print("Proses Mengahapus");
  Future.delayed(Duration(seconds: 1), () {
    // mengahpus
    course.deleteKelas("Pem. Internet");
  });
}
