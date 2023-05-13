import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:smart_parking/core/utils/injector.dart' as di;
import 'package:smart_parking/features/home/presentation/bloc/page_bloc.dart';

export 'package:get_it/get_it.dart';
export 'package:qr_flutter/qr_flutter.dart';

part 'package:smart_parking/core/constants/box_shadow.dart';
part 'package:smart_parking/core/constants/colors.dart';
part 'package:smart_parking/core/constants/font_weight.dart';
part 'package:smart_parking/core/constants/icons.dart';
part 'package:smart_parking/core/constants/images.dart';
part 'package:smart_parking/core/constants/sizes.dart';

part 'package:smart_parking/core/extensions/build_context_ext.dart';
part 'package:smart_parking/core/extensions/double_ext.dart';
part 'package:smart_parking/core/extensions/int_ext.dart';
part 'package:smart_parking/core/extensions/string_ext.dart';

part 'package:smart_parking/core/utils/providers.dart';

part 'package:smart_parking/core/widgets/form_button.dart';
part 'package:smart_parking/core/widgets/form_input_pin.dart';
part 'package:smart_parking/core/widgets/form_input.dart';
part 'package:smart_parking/core/widgets/form_outlined_button.dart';
part 'package:smart_parking/core/widgets/form_upload.dart';
