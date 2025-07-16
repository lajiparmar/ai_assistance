import 'package:my_assistance/app_import.dart';

class AppButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final double? height;
  final Color? buttonColor;
  final double? width;
  final double? borderRadius;
  final Color? fontColor;
  final FontWeight? fontWeight;
  const AppButton(
      {required this.title, required this.onTap, super.key,
      this.fontWeight,
      this.borderRadius,
      this.buttonColor = ColorConstant.appPrimary,
      this.height,
        this.fontColor,
      this.width});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width ?? double.infinity,
        height: height ?? 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius ?? 4),
          color: buttonColor,
        ),
        child: Center(
          child: AppText(title,fontColor: fontColor??ColorConstant.colorWhite,),
        ),
      ),
    );
  }
}
