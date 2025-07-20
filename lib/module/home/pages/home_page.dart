import 'package:my_assistance/app_import.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    print('init state is called or not in the main page ');
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return AppScaffold(body: _bodyView());
  }

  Widget _bodyView() {
    return Padding(
      padding: const EdgeInsets.all(24.0).copyWith(top: 40),
      child: Column(
        children: [
          const LogoAppbar(
            title: StringConstant.ralaAi,
          ),
          Expanded(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const AppImage(
                    image: AssetConstant.imgLogo,
                    width: 120,
                    height: 130,
                  ),
                  const SizedBox(height: 30),
                  const AppText(
                    StringConstant.welcomeToQubikoAI,
                    fontWeight: FontWeight.bold,
                    textAlign: TextAlign.center,
                    fontSize: 30,
                  ),
                  const SizedBox(height: 30),
                  const AppText(
                    StringConstant.startChattingWithRaLaAI,
                    textAlign: TextAlign.center,
                    fontSize: 16,
                  ),
                  const SizedBox(height: 60),
                  AppButton(
                      title: StringConstant.startChat,
                      onTap: () => RouterHelper.gotoChatPage(),
                      borderRadius: 40),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
