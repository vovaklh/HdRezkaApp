import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hdrezka_app/core/di/locator.dart';
import 'package:hdrezka_app/core/utils/extensions/build_context_ext.dart';
import 'package:hdrezka_app/core/utils/utils/my_platform.dart';
import 'package:hdrezka_app/domain/entities/content.dart';
import 'package:hdrezka_app/presentation/blocs/search_bloc.dart/search_bloc.dart';
import 'package:hdrezka_app/presentation/pages/content_details_page.dart';
import 'package:hdrezka_app/presentation/widgets/content_widget.dart';
import 'package:hdrezka_app/presentation/widgets/loader.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage>
    with AutomaticKeepAliveClientMixin {
  final _bloc = locator<SearchBloc>();
  final _pagingController = PagingController<int, Content>(
    firstPageKey: 1,
    invisibleItemsThreshold: 1,
  );

  late final TextEditingController _controller;
  late final stt.SpeechToText _speech;

  bool _isListening = false;
  String _lastSearchQuery = "";

  void _onContentTap(Content content) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => ContentDetailsPage(
          url: content.url,
        ),
      ),
    );
  }

  void _handleState(_, SearchState state) {
    state.maybeWhen(
      success: (_, page, nextPage, content) =>
          _setContent(page, nextPage, content),
      error: (page, _) {
        if (page != 1) _pagingController.error = context.localizations.error;
      },
      orElse: () {},
    );
  }

  void _setContent(
    int page,
    int? nextPage,
    List<Content> content,
  ) {
    if (page == 1) {
      _pagingController.value = PagingState(
        nextPageKey: nextPage,
        itemList: content,
      );
    } else {
      if (nextPage == null) {
        _pagingController.appendLastPage(content);
      } else {
        _pagingController.appendPage(content, nextPage);
      }
    }
  }

  void _listen() async {
    if (!_isListening) {
      bool available = await _speech.initialize(
        debugLogging: true,
        options: [stt.SpeechToText.androidIntentLookup],
      );
      if (available) {
        _isListening = true;
        _speech.listen(
          onResult: (result) {
            if (result.hasConfidenceRating &&
                result.confidence > 0 &&
                result.recognizedWords != _lastSearchQuery) {
              _controller.text = result.recognizedWords;
              _controller.selection = TextSelection.fromPosition(
                TextPosition(offset: _controller.text.length),
              );
              _bloc.add(ContentSearchEvent(_controller.text, 1));
              _lastSearchQuery = _controller.text;
              _speech.stop();
              _isListening = false;
            }
          },
        );
      }
    } else {
      _isListening = false;
      _speech.stop();
    }
  }

  void _onClear() {
    _controller.clear();
    _lastSearchQuery = "";
    _bloc.add(const ResetSearchEvent());
  }

  void _retryFirstPageFailedRequest() =>
      _bloc.add(ContentSearchEvent(_lastSearchQuery, 1));

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _speech = stt.SpeechToText();
    _pagingController.addPageRequestListener((pageKey) {
      _bloc.add(
        ContentSearchEvent(
          _controller.text,
          pageKey,
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        title: _buildSearchField(),
        actions: [
          IconButton(
            icon: const Icon(Icons.clear),
            iconSize: 26,
            splashRadius: 28,
            color: context.color.searchFieldIconColor,
            onPressed: _onClear,
          ),
          IconButton(
            icon: const Icon(Icons.mic),
            padding: EdgeInsets.zero,
            iconSize: 26,
            splashRadius: 28,
            color: context.color.searchFieldIconColor,
            onPressed: _listen,
          ),
          const SizedBox(width: 8),
        ],
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: BlocConsumer<SearchBloc, SearchState>(
          bloc: _bloc,
          listener: _handleState,
          builder: _blocBuilder,
        ),
      ),
    );
  }

  Widget _buildSearchField() {
    return TextField(
      controller: _controller,
      decoration: InputDecoration(
        hintText: context.localizations.search,
        hintStyle: context.text.searchHint,
        border: InputBorder.none,
        filled: true,
        fillColor: context.color.searchFieldFillColor,
        prefixIcon: Icon(
          Icons.search,
          color: context.color.searchFieldIconColor,
        ),
      ),
      style: context.text.searchInput,
      onChanged: (query) {
        if (query != _lastSearchQuery) {
          _bloc.add(ContentSearchEvent(query, 1));
          _lastSearchQuery = query;
        }
      },
    );
  }

  Widget _blocBuilder(_, SearchState state) {
    return state.when(
      initial: () => Center(
        child: Text(
          context.localizations.searchHint,
          style: context.text.searchHint,
        ),
      ),
      loading: () => const Loader(),
      success: (_, __, ___, ____) => _buildContent(),
      error: (page, _) => page == 1
          ? _buildErrorIndicator(_retryFirstPageFailedRequest)
          : _buildContent(),
    );
  }

  Widget _buildContent() {
    return PagedGridView<int, Content>(
      showNewPageProgressIndicatorAsGridChild: MyPlatform.isTvMode,
      showNewPageErrorIndicatorAsGridChild: false,
      pagingController: _pagingController,
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.all(20),
      builderDelegate: PagedChildBuilderDelegate<Content>(
        animateTransitions: true,
        itemBuilder: (_, item, index) => ContentWidget(
          content: item,
          onTap: _onContentTap,
        ),
        firstPageErrorIndicatorBuilder: (_) =>
            _buildErrorIndicator(_pagingController.refresh),
        newPageErrorIndicatorBuilder: (_) =>
            _buildErrorIndicator(_pagingController.retryLastFailedRequest),
      ),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 140,
        mainAxisSpacing: 12,
        childAspectRatio: 0.45,
        crossAxisSpacing: 12,
      ),
    );
  }

  Widget _buildErrorIndicator(VoidCallback onTryAgain) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 10),
          Text(
            _pagingController.error ?? context.localizations.error,
            style: context.text.refreshButton,
          ),
          const SizedBox(height: 4),
          _buildRetryButton(onTryAgain),
        ],
      ),
    );
  }

  Widget _buildRetryButton(VoidCallback onTryAgain) {
    return IconButton(
      onPressed: onTryAgain,
      splashRadius: 16,
      iconSize: 30,
      icon: Icon(
        Icons.refresh,
        color: context.color.refreshButtonIconColor,
      ),
    );
  }
}
