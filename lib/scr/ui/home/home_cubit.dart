
import 'package:bloc/bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../../constants/constants.dart';
import '../../model/users/users.dart';
import '../../services/base.dart';
import './home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeState());

  Future<void> getUsers() async {
    try {
      EasyLoading.show();
      var response = await NetworkBase.dio.get(EndPoint.users);
      if (response.statusCode == 200) {
        List<Users> tempUsersList = List.from(state.usersList);
        for (var i in response.data) {
          tempUsersList.add(Users.fromJson(i));
        }
        emit(state.copyWith(usersList: tempUsersList));
        EasyLoading.dismiss();
      }
    } catch (e) {
      EasyLoading.dismiss();
      emit(state.copyWith(hasError: true));
      print(e.toString());
    }
  }

  Future<void>onRefresh()async{
    state.usersList.clear();
    await getUsers();
  }
}
