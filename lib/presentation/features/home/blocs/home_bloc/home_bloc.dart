import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../domain/entities/get_user_response.dart';
import '../../../../../domain/usecase/get_user_usecase.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

@Injectable()
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetUserUseCase useCase;
  HomeBloc(this.useCase) : super(const HomeState.initial()) {
    on<HomeEvent>((event, emit) async {
      emit(const HomeState.loading());
      try {
        final response = await useCase.execute();
        response.fold((l) => emit(HomeState.failed(error: l)),
            (r) => emit(HomeState.success(response: r)));
      } catch (e) {
        emit(HomeState.failed(error: "Error occurred $e"));
      }
    });
  }
}
