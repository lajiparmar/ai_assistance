import 'package:my_assistance/app_import.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var app = await getApplicationDocumentsDirectory();
  Hive.init(app.path);
  await SharedPrefsService.init();
  runApp(MyApp());
}

