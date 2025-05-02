import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../domain/entities/login_request.dart';
import '../../../../../domain/entities/login_response.dart';
import '../../../../../domain/usecase/login_usecase.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final GetLoginUseCase useCase;

  LoginBloc(this.useCase) : super(const LoginState.initial()) {
    on<LoginEvent>((event, emit) async {
      await event.when(post: (loginRequest)=>_handleLogin(emit,loginRequest));

    });
  }

  Future<void>_handleLogin(Emitter<LoginState>emit,LoginRequest loginRequest)async{
    emit(const LoginState.loading());
    try {
      final response = await useCase.execute(loginRequest: loginRequest);
      response.fold((l) => emit(LoginState.failed(error: l)),
              (r) => emit(LoginState.success(response: r)));
    } catch (e) {
      emit(LoginState.failed(error: "Error occurred $e"));
    }

  }
}