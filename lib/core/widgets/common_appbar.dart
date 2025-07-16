import 'package:my_assistance/app_import.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showBackButton;
  final List<Widget>? actions;

  const CommonAppBar({
    required this.title, super.key,
    this.showBackButton = true,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: AppText(
        title,
        fontWeight: FontWeight.w600,
        fontColor: ColorConstant.colorBlack,
        fontSize: 18,
      ),
      centerTitle: true,
      backgroundColor: ColorConstant.colorWhite,
      surfaceTintColor: ColorConstant.colorWhite,
      elevation: 4,
      leading: showBackButton
          ? IconButton(
              icon: const Icon(Icons.arrow_back, color: ColorConstant.colorBlack),
              onPressed: () => Navigator.pop(context),
            )
          : null,
      actions: actions,
      toolbarHeight: 56, // Ensure AppBar height is consistent (default height)
    );
  }

  @override
  Size get preferredSize =>
      const Size.fromHeight(56); // Make sure the height is consistent
}
