import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:tanyain_flutter/injector/injector.iconfig.dart';

GetIt locator = GetIt.instance;

@injectableInit
void configureInjection(String env) {
  $initGetIt(locator, environment: env);
}
