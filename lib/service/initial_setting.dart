import 'package:Pilll/database/database.dart';
import 'package:Pilll/entity/initial_setting.dart';
import 'package:Pilll/entity/setting.dart';
import 'package:Pilll/entity/user.dart';
import 'package:riverpod/all.dart';

abstract class InitialSettingInterface {
  Future<Setting> register(InitialSettingModel initialSetting);
}

final initialSettingServiceProvider =
    Provider((ref) => InitialSettingPage(ref.watch(databaseProvider)));

class InitialSettingPage extends InitialSettingInterface {
  final DatabaseConnection _database;
  InitialSettingPage(this._database);

  Future<Setting> register(InitialSettingModel initialSetting) {
    var setting = initialSetting.buildSetting();
    return _database
        .userReference()
        .update({UserFirestoreFieldKeys.settings: setting.toJson()}).then(
            (_) => setting);
  }
}