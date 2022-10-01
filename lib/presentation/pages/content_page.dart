import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hdrezka_app/core/di/locator.dart';
import 'package:hdrezka_app/core/utils/extensions/build_context_ext.dart';
import 'package:hdrezka_app/core/utils/utils/my_platform.dart';
import 'package:hdrezka_app/data/datasources/local/models/content_filter_wrapper.dart';
import 'package:hdrezka_app/domain/entities/content.dart';
import 'package:hdrezka_app/presentation/cubits/content_cubit/content_cubit.dart';
import 'package:hdrezka_app/presentation/dialogs/filter_dialog.dart';
import 'package:hdrezka_app/presentation/pages/content_details_page.dart';
import 'package:hdrezka_app/presentation/widgets/content_widget.dart';
import 'package:hdrezka_app/presentation/widgets/error_indicator.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class ContentPage extends StatefulWidget {
  const ContentPage({Key? key}) : super(key: key);

  @override
  State<ContentPage> createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage>
    with AutomaticKeepAliveClientMixin {
  final ContentCubit _cubit = locator<ContentCubit>();
  final _pagingController = PagingController<int, Content>(
    firstPageKey: 1,
    invisibleItemsThreshold: 1,
  );

  ContentFilterWrapper _currentFilterWrapper = ContentFilterWrapper.initial();
  int _lastFocuseIndex = 0;

  void _handleState(_, ContentState state) {
    state.maybeWhen(
      success: (content, isLastPage) => _addNewData(content, isLastPage),
      error: (_) => _pagingController.error = context.localizations.error,
      orElse: () {},
    );
  }

  void _addNewData(List<Content> content, bool isLastPage) {
    final newPage = _pagingController.nextPageKey ?? 0;
    if (isLastPage) {
      _pagingController.appendLastPage(content);
    } else {
      _pagingController.appendPage(content, newPage + 1);
    }
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
      _lastFocuseIndex = 0;
      _pagingController.refresh();
    }
  }

  void _onContentTap(Content content) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => ContentDetailsPage(
          content: content,
        ),
      ),
    );
  }

  bool _shouldHaveFocus(int index) =>
      index == _lastFocuseIndex && MyPlatform.isTvMode;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    _pagingController.addPageRequestListener((pageKey) {
      _cubit.getContent(
        pageKey,
        _currentFilterWrapper.filter,
        _currentFilterWrapper.type,
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
    super.build(context);
    return Scaffold(
      body: SafeArea(
        child: BlocListener<ContentCubit, ContentState>(
          bloc: _cubit,
          listener: _handleState,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: _FilterButton(_showDialog),
              ),
              Expanded(
                child: PagedGridView<int, Content>(
                  showNewPageProgressIndicatorAsGridChild: MyPlatform.isTvMode,
                  showNewPageErrorIndicatorAsGridChild: false,
                  pagingController: _pagingController,
                  scrollDirection: Axis.vertical,
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.all(20),
                  builderDelegate: PagedChildBuilderDelegate<Content>(
                    animateTransitions: true,
                    itemBuilder: (_, item, index) => ContentWidget(
                      hasFocus: _shouldHaveFocus(index),
                      onFocusChange: (hasFocus) {
                        if (hasFocus) _lastFocuseIndex = index;
                      },
                      content: item,
                      onTap: _onContentTap,
                    ),
                    firstPageErrorIndicatorBuilder: (_) => ErrorIndicator(
                      _pagingController.error,
                      _pagingController.refresh,
                    ),
                    newPageErrorIndicatorBuilder: (_) => ErrorIndicator(
                      _pagingController.error,
                      _pagingController.retryLastFailedRequest,
                    ),
                  ),
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 140,
                    mainAxisSpacing: 12,
                    childAspectRatio: 0.45,
                    crossAxisSpacing: 12,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _FilterButton extends StatelessWidget {
  final VoidCallback onPressed;

  const _FilterButton(
    this.onPressed, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      fillColor: MyPlatform.isTvMode
          ? context.color.filterButtonFillColor
          : context.color.filterButtonFocusColor,
      focusColor: context.color.filterButtonFocusColor,
      child: Text(
        context.localizations.filters,
        style: context.text.filterButton,
      ),
    );
  }
}
