import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hdrezka_app/core/di/locator.dart';
import 'package:hdrezka_app/core/utils/error_handler.dart';
import 'package:hdrezka_app/core/utils/extensions/build_context_ext.dart';
import 'package:hdrezka_app/core/utils/mixins/error_provider.dart';
import 'package:hdrezka_app/data/datasources/local/enums/content_affilation.dart';
import 'package:hdrezka_app/domain/entities/content.dart';
import 'package:hdrezka_app/domain/entities/content_data.dart';
import 'package:hdrezka_app/domain/entities/content_details.dart';
import 'package:hdrezka_app/presentation/cubits/content_details_cubit/content_details_cubit.dart';
import 'package:hdrezka_app/presentation/dialogs/movie_dialog.dart';
import 'package:hdrezka_app/presentation/dialogs/tv_series_dialog.dart';
import 'package:hdrezka_app/presentation/widgets/loader.dart';

class ContentDetailsPage extends StatefulWidget {
  final Content content;

  const ContentDetailsPage({
    required this.content,
    Key? key,
  }) : super(key: key);

  @override
  State<ContentDetailsPage> createState() => _ContentDetailsPageState();
}

class _ContentDetailsPageState extends State<ContentDetailsPage>
    with ErrorProvider {
  final _cubit = locator<ContentDetailsCubit>();

  void _addToHistory() async {
    await _cubit.addToHistory(widget.content);
  }

  void _onPlay(ContentDetails contentDetails) {
    switch (contentDetails.affilation) {
      case ContentAffilation.movie:
        showDialog(
          context: context,
          builder: (_) => MovieDialog(
            url: contentDetails.url,
            title: contentDetails.title,
            onVideoTappped: _addToHistory,
          ),
        );
        break;
      case ContentAffilation.tvSeries:
        showDialog(
          context: context,
          builder: (_) => TvSeriesDialog(
            url: contentDetails.url,
            title: contentDetails.title,
            onVideoTappped: _addToHistory,
          ),
        );
        break;
    }
  }

  void _onFavoriteTap(ContentDetails contentDetails) {
    contentDetails.isFavorite
        ? _cubit.deleteFromFavorites(widget.content)
        : _cubit.addToFavorites(widget.content);
  }

  void _blocListener(_, ContentDetailsState state) {
    state.maybeWhen(
      error: (error) =>
          showError(ErrorHandler.processError(context, error), context),
      orElse: () {},
    );
  }

  @override
  void initState() {
    super.initState();
    _cubit.getContentDetails(widget.content);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocConsumer<ContentDetailsCubit, ContentDetailsState>(
          bloc: _cubit,
          listener: _blocListener,
          builder: (_, state) {
            return state.maybeWhen(
              success: (contentDetails) =>
                  _ContentDetails(contentDetails, _onPlay, _onFavoriteTap),
              orElse: () => const Loader(),
            );
          },
          buildWhen: ((previous, current) =>
              current.maybeMap(error: (value) => false, orElse: () => true)),
        ),
      ),
    );
  }
}

class _ContentDetails extends StatelessWidget {
  final ContentDetails contentDetails;
  final Function(ContentDetails) onPlay;
  final Function(ContentDetails) onFavoriteTap;

  const _ContentDetails(
    this.contentDetails,
    this.onPlay,
    this.onFavoriteTap, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 800),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Focus(
                  child: Text(
                    contentDetails.title,
                    style: context.text.contentDetailsTitle,
                  ),
                ),
                const SizedBox(height: 10),
                _Header(
                  contentDetails,
                  onPlay,
                  onFavoriteTap,
                ),
                const SizedBox(height: 16),
                Text(
                  context.localizations.plot,
                  style: context.text.contentDetailsPlot,
                ),
                const SizedBox(height: 10),
                Focus(
                  child: Text(
                    contentDetails.description,
                    style: context.text.contentDetailsDescription,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  final ContentDetails contentDetails;
  final Function(ContentDetails) onPlay;
  final Function(ContentDetails) onFavoriteTap;

  const _Header(
    this.contentDetails,
    this.onPlay,
    this.onFavoriteTap, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CachedNetworkImage(imageUrl: contentDetails.imageUrl),
              const SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () => onPlay(contentDetails),
                    iconSize: 40,
                    splashRadius: 28,
                    focusColor: context.color.playButtonFocusColor,
                    icon: Icon(
                      Icons.play_arrow,
                      color: context.color.playButtonIconColor,
                    ),
                  ),
                  IconButton(
                    onPressed: () => onFavoriteTap(contentDetails),
                    iconSize: 40,
                    splashRadius: 28,
                    focusColor: context.color.favoriteButtonFocusColor,
                    icon: Icon(
                      contentDetails.isFavorite
                          ? Icons.favorite
                          : Icons.favorite_border,
                      color: context.color.favoriteButtonIconColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          flex: 4,
          child: _ContentData(contentDetails.data),
        ),
      ],
    );
  }
}

class _ContentData extends StatelessWidget {
  final List<ContentData> data;

  const _ContentData(
    this.data, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...data
            .map((data) => [
                  Text(
                    "${data.name} ${data.value}",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 6,
                    style: context.text.contentDetailsData,
                  ),
                  const SizedBox(height: 8),
                ])
            .expand((element) => element)
            .toList(),
      ],
    );
  }
}
