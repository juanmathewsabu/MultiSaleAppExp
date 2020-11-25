import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'contact_event.dart';
part 'contact_state.dart';

class ContactBloc extends Bloc<ContactEvent, ContactState> {
  ContactBloc()
      : super(ContactState(contacts: [
          ContactModel(name: 'Neenu Somy', phoneNumber: '9568784526')
        ]));

  @override
  Stream<ContactState> mapEventToState(
    ContactEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }

  void addContact(String contactName, String contactNumber) {
    ContactModel aaa =
        ContactModel(name: contactName, phoneNumber: contactNumber);
    state.contacts.add(aaa);
    emit(ContactState(contacts: state.contacts));
  }
}
