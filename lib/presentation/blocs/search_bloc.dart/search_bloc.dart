import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hdrezka_app/domain/entities/content.dart';
import 'package:hdrezka_app/domain/repositories/content_repository.dart';
import 'package:rxdart/rxdart.dart';

part 'search_bloc.freezed.dart';
part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final ContentRepository contentRepository;

  SearchBloc({required this.contentRepository})
      : super(const SearchState.initial()) {
    on<ContentSearchEvent>(
      (event, emit) => _search(event.query, event.page, emit),
      transformer: (events, mapper) {
        return events
            .debounceTime(const Duration(milliseconds: 300))
            .switchMap(mapper);
      },
    );
    on<ResetSearchEvent>((event, emit) => emit(const SearchState.initial()));
  }

  Future<void> _search(
    String query,
    int page,
    Emitter emit,
  ) async {
    try {
      if (query.isEmpty) {
        emit(const SearchState.initial());
      } else {
        if (page == 1) {
          emit(const SearchState.loading());
        }

        final content = await contentRepository.search(query, page);
        final isLastPage = content.length < 36;
        final nextPage = isLastPage ? null : page + 1;

        emit(SearchState.success(
          query,
          page,
          nextPage,
          content,
        ));
      }
    } catch (exception) {
      emit(SearchState.error(page, exception));
    }
  }
}
