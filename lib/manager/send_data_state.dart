part of 'send_data_cubit.dart';

sealed class SendDataState {}

final class SendDataInitial extends SendDataState {}
final class SendDataSuccess extends SendDataState {}
final class SendDataFailure extends SendDataState {}
