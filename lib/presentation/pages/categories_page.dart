import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hdrezka_app/core/di/locator.dart';
import 'package:hdrezka_app/core/utils/extensions/build_context_ext.dart';
import 'package:hdrezka_app/core/utils/utils/my_platform.dart';
import 'package:hdrezka_app/data/datasources/local/models/content_category_wrapper.dart';
import 'package:hdrezka_app/domain/entities/content.dart';
import 'package:hdrezka_app/presentation/cubits/categories_cubit/categories_cubit.dart';
import 'package:hdrezka_app/presentation/dialogs/categories_diaolog.dart';
import 'package:hdrezka_app/presentation/pages/content_details_page.dart';
import 'package:hdrezka_app/presentation/widgets/content_widget.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  static const _minYear = 1927;

  final _cubit = locator<CategoriesCubit>();
  final _pagingController = PagingController<int, Content>(
    firstPageKey: 1,
    invisibleItemsThreshold: 1,
  );

  ContentCategoryWrapper _currentCategoryWrapper =
      ContentCategoryWrapper.initial();
  int _lastFocuseIndex = 0;

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

  void _showDialog() async {
    final newCategoryWrapper = await showDialog<ContentCategoryWrapper>(
      context: context,
      builder: (context) => CategoriesDiaolog(
        categoryWrapper: _currentCategoryWrapper.copyWith(),
        minYear: _minYear,
      ),
    );
    if (newCategoryWrapper != null &&
        newCategoryWrapper != _currentCategoryWrapper) {
      _currentCategoryWrapper = newCategoryWrapper;
      _lastFocuseIndex = 0;
      _pagingController.refresh();
    }
  }

  void _handleState(_, CategoriesState state) {
    state.maybeWhen(
      success: (page, nextPage, content) => _setContent(nextPage, content),
      error: (_, __) => _pagingController.error = context.localizations.error,
      orElse: () {},
    );
  }

  void _setContent(
    int? nextPage,
    List<Content> content,
  ) {
    if (nextPage == null) {
      _pagingController.appendLastPage(content);
    } else {
      _pagingController.appendPage(content, nextPage);
    }
  }

  @override
  void initState() {
    super.initState();
    _pagingController.addPageRequestListener((pageKey) {
      _cubit.getContent(
        pageKey,
        _currentCategoryWrapper.type,
        _currentCategoryWrapper.genre,
        _currentCategoryWrapper.year,
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
        child: BlocListener<CategoriesCubit, CategoriesState>(
          bloc: _cubit,
          listener: _handleState,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: RawMaterialButton(
                  onPressed: _showDialog,
                  fillColor: MyPlatform.isTvMode
                      ? context.color.categoriesButtonFillColor
                      : context.color.categoriesButtonFocusColor,
                  focusColor: context.color.categoriesButtonFocusColor,
                  child: Text(
                    context.localizations.categories,
                    style: context.text.categoriesButton,
                  ),
                ),
              ),
              Expanded(
                child: _buildContent(),
              ),
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
          hasFocus: _shouldHaveFocus(index),
          onFocusChange: (hasFocus) {
            if (hasFocus) _lastFocuseIndex = index;
          },
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
      onPressed: () =>
          Future.delayed(const Duration(milliseconds: 100), onTryAgain),
      splashRadius: 16,
      iconSize: 30,
      icon: Icon(
        Icons.refresh,
        color: context.color.refreshButtonIconColor,
      ),
    );
  }
}
