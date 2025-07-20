import 'package:my_assistance/app_import.dart';
import 'package:my_assistance/core/service/hive_service/hive_service.dart';

void main() async {
  print('main is called or not ');
  await runZonedGuarded<Future<void>>(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);
    var app = await getApplicationDocumentsDirectory();
    Hive.init(app.path);
    HiveHelper.registerTypeAdaptor();
    await HiveHelper.openBox();
    await SharedPrefsService.init();
    runApp(const MyApp());
  }, (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
  });
}

