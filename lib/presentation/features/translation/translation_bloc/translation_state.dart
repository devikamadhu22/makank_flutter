part of 'translation_bloc.dart';

@freezed
class TranslationState with _$TranslationState {
  const factory TranslationState.initial({required Locale locale}) = _Initial;
  const factory TranslationState.loading({required Locale locale}) = _Loading;
  const factory TranslationState.failed(
      {required Locale locale, required String error}) = _Failed;
  const factory TranslationState.success({required Locale locale}) = _Success;
}
