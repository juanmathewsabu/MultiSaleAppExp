part of 'contact_bloc.dart';

class ContactState {
  List<ContactModel> contacts;
  ContactState({this.contacts});
}

class ContactModel {
  String name;
  String phoneNumber;
  ContactModel({this.name, this.phoneNumber});
}
