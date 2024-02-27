import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/form_model.dart';
import '../constants/form_const.dart';

class FormController extends GetxController {
  String mother = Cow().mother;
  String father = Cow().father;
  String cowNumber = Cow().cowNumber;
  String nid = Cow().nid;
  String rfid = Cow().rfid;
  String dpo = Cow().dpo;
  String name = Cow().name;
  Rx<bool> gender = Cow().gender.obs;
  String status = Cow().status;
  Rx<int> breeds = Cow().breeds.obs;
  String cowshed = Cow().cowshed;
  String herd = Cow().herd;

  Rx<bool> isExpanded = false.obs;

  TextEditingController statusController =
      TextEditingController(text: statusValue);
  TextEditingController shedController = TextEditingController(text: shedValue);
  TextEditingController herdController = TextEditingController(text: herdValue);
  TextEditingController breedsController =
      TextEditingController(text: breedsValue);

  void setMother(String value) => {
        mother = value,
        update(),
      };

  void setFather(String value) => {
        father = value,
        update(),
      };

  void setCowNumber(String value) => {
        cowNumber = value,
        update(),
      };

  void setNid(String value) => {
        nid = value,
        update(),
      };

  void setRfid(String value) => {
        rfid = value,
        update(),
      };

  void setDpo(String value) => {
        dpo = value,
        update(),
      };

  //Toggle button to expand more textfield for nid, rfid and dpo
  void toggleButton() => {
        isExpanded.value == true
            ? isExpanded.value = false
            : isExpanded.value = true,
        update(),
      };

  void setName(String value) => {
        name = value,
        update(),
      };

  // void setBirthDate(DateTime date) => {
  //       birthDate = date,
  //       update(),
  //     };

  // void setGender(bool value) => {
  //       gender = value,
  //       update(),
  //     };

  void setStatus(String value) => {
        status = value,
        update(),
      };

  void setBreeds(int value) => {
        breeds.value = value,
        update(),
      };

  void setCowshed(String value) => {
        cowshed = value,
        update(),
      };

  void setHerd(String value) => {
        herd = value,
        update(),
      };

  void submitForm() {}
}
