import 'package:equatable/equatable.dart';
import 'package:state_management_bloc/models/contact.dart';

abstract class ContactEvent extends Equatable {
  const ContactEvent();
  // @override
  // List<Object> get props => [];
}

// ignore: must_be_immutable
class AddData extends ContactEvent {
  final String nama;
  final String phoneNumber;

  AddData({required this.nama, required this.phoneNumber});
  // log(data);
  @override
  List<Object> get props => [nama, phoneNumber];
}

class UpdateData extends ContactEvent {
  final int indexData;
  final String nama;
  final String phoneNumber;

  UpdateData(
      {required this.indexData, required this.nama, required this.phoneNumber});
  // log(data);

  // UpdateData.
  @override
  List<Object> get props => [];
}

// class Decrement extends CounterEvent {}





