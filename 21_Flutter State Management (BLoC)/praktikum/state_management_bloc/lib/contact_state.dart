import 'package:equatable/equatable.dart';

import 'models/contact.dart';

class ContactState extends Equatable {
  final List<GetContact> contacts;
  // GetContact(name: "Rouf Majidin", phoneNumber: "6283133978010")

  // get c => contacts;

  const ContactState({required this.contacts});
  @override
  // TODO: implement props
  List<Object> get props => contacts;
}
