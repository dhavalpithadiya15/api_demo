import 'package:equatable/equatable.dart';

import '../../model/users/users.dart';

class HomeState extends Equatable {
  final List<Users> usersList;
  final bool hasError;

  @override
  List<Object?> get props => [usersList, hasError];

  const HomeState({
    this.usersList = const [],
    this.hasError = false,
  });

  HomeState copyWith({
    List<Users>? usersList,
    bool? hasError,
  }) {
    return HomeState(
      usersList: usersList ?? this.usersList,
      hasError: hasError ?? this.hasError,
    );
  }
}
