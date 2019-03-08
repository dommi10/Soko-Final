
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:scoped_model/scoped_model.dart';

import 'app.dart';
import 'model/app_state_model.dart';

void main() {
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  AppStateModel model = AppStateModel();
  model.loadProducts();

  runApp(
    ScopedModel<AppStateModel>(
      model: model,
      child: ShrineApp(),
    ),
  );
}
