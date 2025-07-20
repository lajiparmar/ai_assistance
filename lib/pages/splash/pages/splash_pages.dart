import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:my_assistance/app_import.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    print('splash screen is called or not ');
    Future.delayed(
        const Duration(seconds: 3), () => RouterHelper.gotoDashboardPage());
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppImage(
              image: AssetConstant.imgLogo,
              width: 120,
              height: 130,
            ),
            SizedBox(
              height: 40,
            ),
            AppText(
              StringConstant.qubikoAI,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            )
          ],
        ),
      ),
    );
  }
}
