import 'package:doctor_app/modules/home/screens/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConsultCubit extends Cubit<ConsultStates> {
  ConsultCubit() : super(InitialConsultState());

  static ConsultCubit get(context) => BlocProvider.of(context);

  bool selectedItem1 = false;
  bool selectedItem2 = false;
  bool selectedItem3 = false;

  void changeSelectedItem1() {
    selectedItem1 = !selectedItem1;
    selectedItem3 = false;
    selectedItem2 = false;

    emit(SuccessChangeSelectedItemState1());
  }

  void changeSelectedItem2() {
    selectedItem2 = !selectedItem2;
    selectedItem1 = false;
    selectedItem3 = false;

    emit(SuccessChangeSelectedItemState2());
  }

  void changeSelectedItem3() {
    selectedItem3 = !selectedItem3;
    selectedItem1 = false;
    selectedItem2 = false;

    emit(SuccessChangeSelectedItemState3());
  }
}
