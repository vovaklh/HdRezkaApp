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

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<FavoritesCubit, FavoritesState>(
          bloc: _cubit,
          builder: (_, state) {
            return state.maybeWhen(
              success: (content) {
                if (content.isEmpty) {
                  return const _EmptyContent();
                }
                return _ContentGrid(content);
              },
              error: (error) =>
                  MyErrorWidget(ErrorHandler.processError(context, error)),
              orElse: () => const _EmptyContent(),
            );
          },
        ),
      ),
    );
  }
}

class _ContentGrid extends StatelessWidget {
  final List<Content> content;

  const _ContentGrid(
    this.content, {
    Key? key,
  }) : super(key: key);

  void _onContentTap(Content content, BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => ContentDetailsPage(
          content: content,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.all(20),
      itemCount: content.length,
      itemBuilder: (_, index) => ContentWidget(
        content: content[index],
        onTap: (content) => _onContentTap(content, context),
      ),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 140,
        mainAxisSpacing: 12,
        childAspectRatio: 0.45,
        crossAxisSpacing: 12,
      ),
    );
  }
}

class _EmptyContent extends StatelessWidget {
  const _EmptyContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        context.localizations.favoritesIsEmpty,
        style: context.text.favoriteSubtitle,
      ),
    );
  }
}
