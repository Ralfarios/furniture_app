import 'package:furniture_app/viewmodel/pageLandingViewModel.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> multiProviders = [
  ChangeNotifierProvider(create: (context) => PageLandingViewModel()),
];
