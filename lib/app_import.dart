///---------------------Flutter Packages-------------------------
export 'dart:async';

export 'package:firebase_core/firebase_core.dart';
export 'package:firebase_crashlytics/firebase_crashlytics.dart';
export 'package:flutter/material.dart';
export 'package:flutter_slidable/flutter_slidable.dart' hide ConfirmDismissCallback;
export 'package:get/get.dart';
export  'package:go_router/go_router.dart';
export 'package:hive/hive.dart';
export 'package:my_assistance/app.dart';
export 'package:my_assistance/firebase_option.dart';
export 'package:path_provider/path_provider.dart';
export 'package:smooth_page_indicator/smooth_page_indicator.dart';

/// ---------------------Bindings Import-------------------------

export 'bindings/intial_bindings.dart';
/// ---------------------Controller Import-------------------------

export 'controller/bottom_bar_controller.dart';
export 'controller/theme_controller.dart';
///---------------------Core Import-------------------------

export 'core/app_constant/app_constnat.dart';
export 'core/service/chat_service/chat_service.dart';
///---------------------Core Service Import-------------------------
///
export 'core/service/shared_pref_service/shared_service.dart';
export 'core/service/theme_service/theme_service.dart';
///---------------------Widget Import-------------------------
///
export 'core/widgets/app_button.dart';
export 'core/widgets/app_image_asset.dart';
export 'core/widgets/app_scaffold.dart';
export 'core/widgets/app_text.dart';
export 'core/widgets/app_text_field.dart';
export 'core/widgets/common_appbar.dart';
export 'core/widgets/rala_ai_appbar.dart';
///---------------------Hive Model Import-------------------------

export 'data/hive_model/chat_model/chat_model.dart';
///---------------------Model Import-------------------------

export 'data/model/ai_assistance/ai_assistance_model.dart';
export 'data/model/chat_model.dart';
export 'data/model/history_model.dart';
///---------------------Module Import-------------------------
///
///---------------------Ai Assistance Module Import-------------------------
///
export 'module/ai_assistance/bindings/ai_assistance_bindings.dart';
export 'module/ai_assistance/controller/ai_assistant_controller.dart';
export 'module/ai_assistance/pages/ai_assistance/ai_assistance_page.dart';
///---------------------Chat Module Import-------------------------
///
export 'module/chat/pages/chat/chat_page.dart';
export 'module/history/bindings/history_bindings.dart';
export 'module/history/bindings/history_search_bindings.dart';
///---------------------History Module Import-------------------------

export 'module/history/controller/history_controller.dart';
export 'module/history/controller/history_search_controller.dart';
export 'module/history/pages/history_page/history_page.dart';
export 'module/history/pages/history_search_page/history_search_page.dart';
///---------------------Page Import-------------------------
///
export 'module/home/pages/home_page.dart';
export 'pages/dashboard/pages/dash_board_page.dart';
export 'pages/splash/pages/splash_pages.dart';
///---------------------Router Import-------------------------

export 'router/route.dart';
export 'router/router_helper.dart';

export 'module/chat/controller/chat_controller.dart';


