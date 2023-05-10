import 'package:smart_parking/core.dart';
import 'package:smart_parking/features/home/presentation/bloc/page_bloc.dart';

final locator = GetIt.instance;

void init() {
  locator.registerFactory(() => PageBloc());
}
