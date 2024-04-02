import 'package:flutter_bloc/flutter_bloc.dart';
part 'send_data_state.dart';

class SendDataCubit extends Cubit<SendDataState> {
  SendDataCubit() : super(SendDataInitial());


}
