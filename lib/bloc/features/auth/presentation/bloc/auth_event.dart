part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

// Event => Action / aksi / tindakan
// 1. AuthStateLogin -> Terautentikasi
// 2. AuthStateLogout -> Tidak terautentikasi

class AuthEventLogin extends AuthEvent {
  final String email;
  final String password;

  const AuthEventLogin(this.email, this.password);
}

class AuthEventLogout extends AuthEvent {}
