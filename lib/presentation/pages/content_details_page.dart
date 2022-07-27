import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hdrezka_app/core/di/locator.dart';
import 'package:hdrezka_app/core/utils/extensions/build_context_ext.dart';
import 'package:hdrezka_app/domain/entities/content_details.dart';
import 'package:hdrezka_app/presentation/blocs/content_details_bloc/content_details_bloc.dart';
import 'package:hdrezka_app/presentation/widgets/loader.dart';

class ContentDetailsPage extends StatefulWidget {
  final String url;

  const ContentDetailsPage({
    required this.url,
    Key? key,
  }) : super(key: key);

  @override
  State<ContentDetailsPage> createState() => _ContentDetailsPageState();
}

class _ContentDetailsPageState extends State<ContentDetailsPage> {
  final _bloc = locator<ContentDetailsBloc>();

  @override
  void initState() {
    _bloc.add(GetContentDetailsEvent(widget.url));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<ContentDetailsBloc, ContentDetailsState>(
          bloc: _bloc,
          builder: _blocBuilder,
        ),
      ),
    );
  }

  Widget _blocBuilder(_, ContentDetailsState state) {
    return state.maybeWhen(
      success: (contentDetails) => _buildContentDetails(contentDetails),
      orElse: () => const Loader(),
    );
  }

  Widget _buildContentDetails(ContentDetails contentDetails) {
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
                _buildHeader(contentDetails),
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

  Row _buildHeader(ContentDetails contentDetails) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CachedNetworkImage(imageUrl: contentDetails.imageUrl),
              const SizedBox(height: 10),
              _buildButtons(),
            ],
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: _buildContentData(contentDetails),
        ),
      ],
    );
  }

  Row _buildButtons() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconButton(
          onPressed: () {},
          iconSize: 40,
          splashRadius: 28,
          focusColor: context.color.playButtonFocusColor,
          icon: Icon(
            Icons.play_arrow,
            color: context.color.playButtonIconColor,
          ),
        ),
        IconButton(
          onPressed: () {},
          iconSize: 40,
          splashRadius: 28,
          focusColor: context.color.favoriteButtonFocusColor,
          icon: Icon(
            Icons.favorite_border,
            color: context.color.favoriteButtonIconColor,
          ),
        ),
      ],
    );
  }

  Column _buildContentData(ContentDetails contentDetails) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...contentDetails.data
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