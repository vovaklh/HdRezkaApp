import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hdrezka_app/core/di/locator.dart';
import 'package:hdrezka_app/core/utils/error_handler.dart';
import 'package:hdrezka_app/core/utils/extensions/build_context_ext.dart';
import 'package:hdrezka_app/domain/entities/content.dart';
import 'package:hdrezka_app/presentation/cubits/favorites_cubit.dart/favorites_cubit.dart';
import 'package:hdrezka_app/presentation/pages/content_details_page.dart';
import 'package:hdrezka_app/presentation/widgets/content_widget.dart';
import 'package:hdrezka_app/presentation/widgets/my_error_widget.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage>
    with AutomaticKeepAliveClientMixin {
  final _cubit = locator<FavoritesCubit>();

  void _onContentTap(Content content) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => ContentDetailsPage(
          content: content,
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<FavoritesCubit, FavoritesState>(
          bloc: _cubit,
          builder: _blocBuilder,
        ),
      ),
    );
  }

  Widget _blocBuilder(_, FavoritesState state) {
    return state.maybeWhen(
      success: _buildContent,
      error: (error) =>
          MyErrorWidget(ErrorHandler.processError(context, error)),
      orElse: _buildEmptyContent,
    );
  }

  Widget _buildContent(List<Content> content) {
    if (content.isEmpty) {
      return _buildEmptyContent();
    }

    return GridView.builder(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.all(20),
      itemCount: content.length,
      itemBuilder: (_, index) => ContentWidget(
        content: content[index],
        onTap: _onContentTap,
      ),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 140,
        mainAxisSpacing: 12,
        childAspectRatio: 0.45,
        crossAxisSpacing: 12,
      ),
    );
  }

  Widget _buildEmptyContent() {
    return Center(
      child: Text(
        context.localizations.favoritesIsEmpty,
        style: context.text.favoriteSubtitle,
      ),
    );
  }
}
