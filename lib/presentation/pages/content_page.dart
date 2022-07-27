import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hdrezka_app/core/di/locator.dart';
import 'package:hdrezka_app/core/utils/extensions/build_context_ext.dart';
import 'package:hdrezka_app/core/utils/utils/my_platform.dart';
import 'package:hdrezka_app/data/datasources/local/models/content_filter_wrapper.dart';
import 'package:hdrezka_app/domain/entities/content.dart';
import 'package:hdrezka_app/presentation/blocs/content_bloc/content_bloc.dart';
import 'package:hdrezka_app/presentation/dialogs/filter_dialog.dart';
import 'package:hdrezka_app/presentation/pages/content_details_page.dart';
import 'package:hdrezka_app/presentation/widgets/content_widget.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class ContentPage extends StatefulWidget {
  const ContentPage({Key? key}) : super(key: key);

  @override
  State<ContentPage> createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  final ContentBloc _bloc = locator<ContentBloc>();
  final PagingController<int, Content> _pagingController =
      PagingController(firstPageKey: 1, invisibleItemsThreshold: 1);

  ContentFilterWrapper _currentFilterWrapper = ContentFilterWrapper.initial();

  void _handleState(_, ContentState state) {
    state.maybeWhen(
      success: (content, isLastPage) => _addNewData(content, isLastPage),
      error: (_) => _pagingController.error = context.localizations.error,
      orElse: () {},
    );
  }

  void _showDialog() async {
    final newFilterWrapper = await showDialog<ContentFilterWrapper>(
      context: context,
      builder: (context) => FilterDialog(
        filterWrapper: _currentFilterWrapper.copyWith(),
      ),
    );
    if (newFilterWrapper != null && newFilterWrapper != _currentFilterWrapper) {
      _currentFilterWrapper = newFilterWrapper;
      _pagingController.refresh();
    }
  }

  void _addNewData(List<Content> content, bool isLastPage) {
    final newPage = _pagingController.nextPageKey ?? 0;
    if (isLastPage) {
      _pagingController.appendLastPage(content);
    } else {
      _pagingController.appendPage(content, newPage + 1);
    }
  }

  void _onContentTap(Content content) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => ContentDetailsPage(
          url: content.url,
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _pagingController.addPageRequestListener((pageKey) {
      _bloc.add(
        GetContentEvent(
          pageKey,
          _currentFilterWrapper.filter,
          _currentFilterWrapper.type,
        ),
      );
    });
  }

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocListener<ContentBloc, ContentState>(
          bloc: _bloc,
          listener: _handleState,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: RawMaterialButton(
                  onPressed: _showDialog,
                  fillColor: MyPlatform.isTvMode
                      ? context.color.filterButtonFillColor
                      : context.color.filterButtonFocusColor,
                  focusColor: context.color.filterButtonFocusColor,
                  child: Text(
                    context.localizations.filters,
                    style: context.text.filterButton,
                  ),
                ),
              ),
              Expanded(child: _buildContent()),
            ],
          ),
        ),
      ),
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
            _pagingController.error,
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
      focusColor: context.color.refreshButtonFocusColor,
      icon: Icon(
        Icons.refresh,
        color: context.color.refreshButtonIconColor,
      ),
    );
  }
}
