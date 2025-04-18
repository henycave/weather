import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather/features/weather/domain/entities/geocoding.dart';
import 'package:weather/features/weather/domain/usecases/provider/get_remote_location_provider.dart';

import '../../../../core/error/app_exception.dart';

part 'search_notifier_provider.freezed.dart';

part 'search_notifier_provider.g.dart';

@freezed
abstract class SearchState with _$SearchState {
  const factory SearchState({
    @Default('') String query,
    @Default([]) List<Geocoding> results,
  }) = _SearchState;
}

@riverpod
class SearchNotifier extends _$SearchNotifier {
  Timer? _debounce;

  @override
  Future<SearchState> build() async {
    return const SearchState();
  }

  void updateQuery(String newQuery) {
    final currentState = state.value ?? const SearchState();

    state = AsyncValue.data(currentState.copyWith(query: newQuery));

    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), search);
  }

  Future<void> search() async {
    state = const AsyncValue.loading();

    final currentState = state.value ?? SearchState();

    if (currentState.query.isEmpty) {
      state = AsyncValue.data(currentState.copyWith(results: []));
      return;
    }
    state = await AsyncValue.guard(() async {
      final getRemoteLocation = ref.read(getRemoteLocationProvider);
      final result = await getRemoteLocation(currentState.query);

      return result.fold(
            (failure) => throw AppException(failure.message),
            (geocodingList) => currentState.copyWith(results: geocodingList),
      );
    });
  }
}
