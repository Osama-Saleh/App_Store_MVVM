import 'dart:async';
import 'dart:developer';
import 'dart:io';
import 'package:app_store/start-app/provider_list.dart';
import 'package:app_store/utils/language/app_lang.dart';
import 'package:app_store/widgets/drawer/custom_drawer.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:provider/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'package:validators/validators.dart' as validators;
import '../../controller/c_theme.dart';
import '../../model/premium/premium_model.dart';
import '../../model/social/social_model.dart';
import 'package:easy_localization/easy_localization.dart';



//* part Pages
part '../../view/splash/body.dart';
part '../../view/home/body.dart';
part '../../view/home/components/social/social_card.dart';
part '../../view/home/components/social/social_gridview.dart';

//* part View
part '../../view/webview/page_webview.dart';
part '../../view/auth/login.dart';
part '../../view/auth/forget.dart';
part '../../view/auth/register.dart';
part '../../view/details/details.dart';
part '../../view/details/widgets/details_card_info.dart';

//* models
part'../../model/auth/user_auth.dart';

//* widgets
part '../../widgets/custom_app_bar.dart';
part '../../widgets/tap_bar_items.dart';
part '../../widgets/images/widget_network_image.dart';
part '../../widgets/images/widget_asset_image.dart';
part '../../view/auth/widgets/auth_appbar.dart';
part '../../view/auth/widgets/auth_button.dart';
part '../../view/auth/widgets/auth_logo.dart';
part '../../view/auth/widgets/auth_footer.dart';
part '../../view/auth/widgets/auth_forget.dart';
part '../../view/auth/widgets/auth_text_form_field.dart';
part '../../view/auth/widgets/auth_mail.dart';
part '../../view/auth/widgets/auth_password.dart';
part '../../widgets/error/error_text.dart';
part '../../view/details/widgets/details_header.dart';
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
part '../validators/app_validators.dart';
part '../routes/routes.dart';
part '../firebase/connection_firebase.dart';
part '../../view/auth/wrapper.dart';
part '../../widgets/drawer/widget/logout_dialog.dart';
//*controller 
part '../../controller/c_languages.dart';
part '../../controller/c_auth.dart';

//* start APP
part '../../start-app/start_app.dart';
part '../../start-app/material_app.dart';

//* API
part '../../api/api_key.dart';
// part '../../api/api_handel.dart';
part '../../api/api.dart';