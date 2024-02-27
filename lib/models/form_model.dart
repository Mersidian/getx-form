class Cow {
  String mother;
  String father;
  String cowNumber;
  String nid;
  String rfid;
  String dpo;
  String name;
  DateTime birthDate;
  bool gender;
  String status;
  int breeds;
  String cowshed;
  String herd;

  Cow({
    this.mother = "",
    this.father = "",
    this.cowNumber = "",
    this.nid = "",
    this.rfid = "",
    this.dpo = "",
    this.name = "",
    DateTime? birthDate,
    this.gender = false,
    this.status = "",
    this.breeds = 5,
    this.cowshed = "",
    this.herd = "",
  }) : birthDate = birthDate ?? DateTime.now();
}
