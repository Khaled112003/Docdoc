import 'package:daweny/core/di/depencey_injection.dart';
import 'package:daweny/core/helpers/shared_pref_helper.dart';
import 'package:daweny/core/helpers/shared_pref_keys.dart';
import 'package:daweny/core/rouets/router.dart';
import 'package:daweny/core/thems/colors/colors.dart';
import 'package:daweny/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

bool isLogedInUser = false;
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setup();
  checkUserLogin();
  runApp(const Docdoc());
}

class Docdoc extends StatelessWidget {
  const Docdoc({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      child: MaterialApp.router(
        locale: const Locale('ar'),
        localizationsDelegates: const [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
        theme: ThemeData(
            primaryColor: MangerColors.mainBlue,
            scaffoldBackgroundColor: Colors.white),
        debugShowCheckedModeBanner: false,
        routerConfig: router,
      ),
    );
  }
}

checkUserLogin() async {
  String userToken = await SharedPrefHelper.getSecuredString(SharedPrefKeys.token);
  if ( userToken.isNotEmpty) {
    isLogedInUser = true;
  } else {
    isLogedInUser = false;
  }
}
