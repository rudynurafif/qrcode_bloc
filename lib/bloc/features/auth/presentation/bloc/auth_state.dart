part of 'auth_bloc.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

// State => Kondisi saat ini
// 1. AuthStateLogin -> Terautentikasi
// 2. AuthStateLogout -> Tidak terautentikasi
// 3. AuthStateLoading -> Loading
// 4. AuthStateError -> Gagal terautentikasi

class AuthStateLogin extends AuthState {}

class AuthStateLogout extends AuthState {}

class AuthStateLoading extends AuthState {}

class AuthStateError extends AuthState {
  final String message;

  AuthStateError(this.message);
}
