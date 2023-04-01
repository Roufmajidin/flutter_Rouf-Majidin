import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management_bloc/contact_event.dart';
import 'package:state_management_bloc/contact_state.dart';
import 'package:state_management_bloc/models/contact.dart';

class ContactBloc extends Bloc<ContactEvent, ContactState> {
  ContactBloc() : super(ContactState(contacts: [])) {
    on<AddData>((event, emit) => emit(ContactState(
        contacts: List.of(state.contacts)
          ..add(
              GetContact(name: event.nama, phoneNumber: event.phoneNumber)))));

    //update

    // final List<String> updatedList = List.from(state.contacts);

    // state.contacts.elementAt(1).name = "asas";
    // state.contacts.elementAt(1).phoneNumber = "asas";

    // on<UpdateData>((event, emit) => emit(ContactState(
    //     contacts: List.of(state.contacts)..elementAt(1).name = "asas")));

    // on<AddData>(_onAddData);
  }
}
