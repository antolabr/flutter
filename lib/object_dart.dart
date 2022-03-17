class Employee {
  String name = "";

  get getName => name;

  set setName(name) => this.name = name;

  void result() {
    print(name);
  }

  void main(List<String> args) {
    Employee emp = Employee();
    emp.name = "Employé 1";
    emp.result();
  }
}
