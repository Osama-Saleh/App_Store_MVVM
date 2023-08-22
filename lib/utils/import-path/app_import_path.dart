import 'dart:async';
import 'package:app_store/start-app/provider_list.dart';
import 'package:app_store/utils/language/app_lang.dart';
import 'package:app_store/widgets/drawer/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:provider/provider.dart';

import '../../controller/c_theme.dart';


//* part Pages
part '../../view/splash/body.dart';
part '../../view/home/body.dart';
part '../../view/home/components/social/social_card.dart';
part '../../view/home/components/social/social_gridview.dart';


//* widgets
part '../../widgets/custom_app_bar.dart';
part '../../widgets/tap_bar_items.dart';
part '../../widgets/images/widget_network_image.dart';
part '../../widgets/images/widget_asset_image.dart';
//* themes
part '../theme/app_text_theme.dart';

//*components
part '../../view/home/components/premium/premium_card.dart';
part '../../view/home/components/premium/premium_tap.dart';
part '../../view/home/components/premium/premium_card_categories.dart';

//* parts of Utils
part '../constant/app_media.dart';
part '../theme/app_color.dart';
part '../theme/app_theme.dart';
part '../language/app_lang_key.dart';
part '../dime/app_dime.dart';
part '../restart/app_restart.dart';
//*controller 
part '../../controller/c_languages.dart';

//* start APP
part '../../start-app/start_app.dart';
part '../../start-app/material_app.dart';