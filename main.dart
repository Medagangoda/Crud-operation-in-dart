import 'Student.dart';

void main() {
  List<Student> studentlist = List.empty(growable: true);

  //---------------------------------ADD Student no function
  studentlist.add(Student(name: "kasun", age: 12, school: "scc"));
  studentlist.add(Student(name: "kamal", age: 15, school: "kcc"));
  studentlist.add(Student(name: "supun", age: 15, school: "hcc"));

  //------------------------------ Initial read of students
  print("Initial list of students:");
  for (Student student in studentlist) {
    print("Name: ${student.name}, School: ${student.school}, Age: ${student.age}");
  }

  //---------------------------------------------------------------------------------------------------------------

  //---------------------------Update student
  for (Student student in studentlist) {
    if (student.name == "supun") {
      student.name = "supun update";
      student.age = 10;
      student.school = "update school";
      print("supun has been updated");
    }
  }

  // Read students after update
  print("\nList of students after update:");
  for (Student student in studentlist) {
    print("Name: ${student.name}, School: ${student.school}, Age: ${student.age}");
  }
  

  //--------------------Delete student
  studentlist.removeWhere((student) => student.name == "kasun");
  print("\nkasun has been deleted");

  //---------------------Read students after deletion
  print("\nList of students after deletion:");
  for (Student student in studentlist) {
    print("Name: ${student.name}, School: ${student.school}, Age: ${student.age}");
  }

}// main ek iwara wena warahana

void addStudent(List<Student> studentlist, Student student) {
  studentlist.add(student);
  print("${student.name} has been added");
}
