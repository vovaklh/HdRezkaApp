import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hdrezka_app/core/di/locator.dart';
import 'package:hdrezka_app/core/utils/error_handler.dart';
import 'package:hdrezka_app/core/utils/extensions/build_context_ext.dart';
import 'package:hdrezka_app/core/utils/mixins/error_provider.dart';
import 'package:hdrezka_app/data/datasources/local/app_constants.dart';
import 'package:hdrezka_app/domain/dto/settings_dto.dart';
import 'package:hdrezka_app/presentation/cubits/settings_cubit.dart/settings_cubit.dart';
import 'package:hdrezka_app/presentation/dialogs/input_dialog.dart';
import 'package:hdrezka_app/presentation/dialogs/mirror_dialog.dart';
import 'package:hdrezka_app/presentation/themes/theme_manager.dart';
import 'package:useful_extensions/useful_extensions.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage>
    with ErrorProvider, AutomaticKeepAliveClientMixin {
  final _cubit = locator<SettingsCubit>();

  void _showInputDialog(Function(String, String) callback) async {
    final Pair<String, String>? data = await showDialog(
      context: context,
      builder: (_) => const InputDialog(),
    );
    final email = data?.first;
    final password = data?.second;

    if (email != null && password != null) {
      callback(email, password);
    }
  }

  void _showMirrorDialog() async {
    final SettingsDto? settingsDto = _cubit.state.maybeMap(
      success: (value) => value.settingsDto,
      orElse: () => null,
    );
    final String? mirror = await showDialog<String?>(
      context: context,
      builder: (_) => MirrorDialog(
        currentMirror: settingsDto?.mirror ?? AppConstants.mirrors.first,
        mirrors: AppConstants.mirrors,
      ),
    );
    if (mirror != null) {
      _cubit.setMirror(mirror);
      Fluttertoast.showToast(
        msg: context.localizations.reloadAppToApplyChanges,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 3,
        backgroundColor: context.color.toastBackgroundColor,
        textColor: context.color.toastTextColor,
        fontSize: 16.0,
      );
    }
  }

  void _blocListener(_, SettingsState state) {
    state.maybeWhen(
      error: (exception) {
        showError(ErrorHandler.processError(context, exception), context);
      },
      orElse: () {},
    );
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      body: SafeArea(
        child: BlocConsumer<SettingsCubit, SettingsState>(
          bloc: _cubit,
          listener: _blocListener,
          builder: _buildSettings,
          buildWhen: ((previous, current) =>
              current.maybeMap(error: (value) => false, orElse: () => true)),
        ),
      ),
    );
  }

  Widget _buildSettings(_, SettingsState state) {
    return state.maybeWhen(
      orElse: () => const SizedBox.expand(),
      success: (dto) {
        return ListView(
          children: [
            SettingsContainer(
              title: context.localizations.account,
              settingItems: _getAuthSettingItems(dto),
            ),
            SettingsContainer(
              title: context.localizations.app,
              settingItems: [
                IconedSettingsItem(
                  onTap: _showMirrorDialog,
                  text: context.localizations.mirror,
                  icon: Icons.follow_the_signs_rounded,
                ),
              ],
            ),
            SettingsContainer(
              title: context.localizations.interface,
              settingItems: [
                CheckBoxSettingsItem(
                  isChecked: context.isDarkMode,
                  text: context.localizations.enableDarkMode,
                  onTap: () => ThemeManager.switchTheme(context),
                ),
              ],
            ),
          ],
        );
      },
    );
  }

  List<Widget> _getAuthSettingItems(SettingsDto dto) {
    if (dto.isLoggedIn) {
      return [
        IconedSettingsItem(
          onTap: _cubit.signOut,
          text: context.localizations.signOut,
          icon: Icons.logout_outlined,
        ),
      ];
    }
    return [
      IconedSettingsItem(
        onTap: () => _showInputDialog(_cubit.signIn),
        text: context.localizations.signIn,
        icon: Icons.login,
      ),
      IconedSettingsItem(
        onTap: () => _showInputDialog(_cubit.signUp),
        text: context.localizations.signUp,
        icon: Icons.login,
      ),
    ];
  }
}

class SettingsContainer extends StatelessWidget {
  final String title;
  final List<Widget> settingItems;

  const SettingsContainer({
    required this.title,
    required this.settingItems,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: context.text.settingsContainerTitle,
        ),
        const SizedBox(height: 10),
        ...settingItems,
      ],
    );
  }
}

class IconedSettingsItem extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final IconData icon;

  const IconedSettingsItem({
    required this.onTap,
    required this.text,
    required this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        height: 60,
        child: Row(
          children: [
            Icon(
              icon,
              color: context.color.settingsItemIcon,
            ),
            const SizedBox(width: 10),
            Text(text, style: context.text.settingsContainerItem),
          ],
        ),
      ),
    );
  }
}

class CheckBoxSettingsItem extends StatelessWidget {
  final bool isChecked;
  final String text;
  final VoidCallback onTap;

  const CheckBoxSettingsItem({
    required this.isChecked,
    required this.text,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        height: 60,
        child: Row(
          children: [
            Checkbox(
              value: isChecked,
              onChanged: null,
              checkColor: context.color.settingsCheckBoxCheckColor,
              side: MaterialStateBorderSide.resolveWith(
                (states) => BorderSide(
                  width: 1.0,
                  color: context.color.settingsCheckBoxBorder,
                ),
              ),
            ),
            const SizedBox(width: 10),
            Text(text, style: context.text.settingsContainerItem),
          ],
        ),
      ),
    );
  }
}
