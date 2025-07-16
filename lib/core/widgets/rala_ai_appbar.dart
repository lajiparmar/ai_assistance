import 'package:my_assistance/app_import.dart';

class LogoAppbar extends StatelessWidget {
  final String title;
  final List<Widget> actions;
  const LogoAppbar({required this.title, super.key, this.actions=const <Widget>[]});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        const AppImage(image: AssetConstant.icLogoAppBar, height: 25, width: 25),
        Expanded(
          child: Center(
            child: AppText(
              title,
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
        ),
        ...actions,
      ],
    );
  }
}
