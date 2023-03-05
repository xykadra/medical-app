import 'package:get/get.dart';

import '../modules/ZatraziPregled/bindings/zatrazi_pregled_binding.dart';
import '../modules/ZatraziPregled/views/zatrazi_pregled_view.dart';
import '../modules/auth/bindings/auth_binding.dart';
import '../modules/auth/views/auth_view.dart';
import '../modules/formInput/bindings/form_input_binding.dart';
import '../modules/formInput/views/form_input_view.dart';
import '../modules/history/bindings/history_binding.dart';
import '../modules/history/views/history_view.dart';
import '../modules/homePage/bindings/home_page_binding.dart';
import '../modules/homePage/views/home_page_view.dart';
import '../modules/incomeMessage/bindings/income_message_binding.dart';
import '../modules/incomeMessage/views/income_message_view.dart';
import '../modules/navbar/bindings/navbar_binding.dart';
import '../modules/navbar/views/navbar_view.dart';
import '../modules/prijavaProblema/bindings/prijava_problema_binding.dart';
import '../modules/prijavaProblema/views/prijava_problema_view.dart';
import '../modules/settings/bindings/settings_binding.dart';
import '../modules/settings/views/settings_view.dart';
import '../modules/specialisticki/bindings/specialisticki_binding.dart';
import '../modules/specialisticki/views/specialisticki_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.AUTH;

  static final routes = [
    GetPage(
      name: _Paths.AUTH,
      page: () => const AuthView(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: _Paths.HOME_PAGE,
      page: () => const HomePageView(),
      binding: HomePageBinding(),
    ),
    GetPage(
      name: _Paths.ZATRAZI_PREGLED,
      page: () => const ZatraziPregledView(),
      binding: ZatraziPregledBinding(),
    ),
    GetPage(
      name: _Paths.HISTORY,
      page: () => const HistoryView(),
      binding: HistoryBinding(),
    ),
    GetPage(
      name: _Paths.SETTINGS,
      page: () => const SettingsView(),
      binding: SettingsBinding(),
    ),
    GetPage(
      name: _Paths.INCOME_MESSAGE,
      page: () => const IncomeMessageView(),
      binding: IncomeMessageBinding(),
    ),
    GetPage(
      name: _Paths.NAVBAR,
      page: () => const NavbarView(),
      binding: NavbarBinding(),
    ),
    GetPage(
      name: _Paths.SPECIALISTICKI,
      page: () => const SpecialistickiView(),
      binding: SpecialistickiBinding(),
    ),
    GetPage(
      name: _Paths.FORM_INPUT,
      page: () => const FormInputView(),
      binding: FormInputBinding(),
    ),
    GetPage(
      name: _Paths.PRIJAVA_PROBLEMA,
      page: () => const PrijavaProblemaView(),
      binding: PrijavaProblemaBinding(),
    ),
  ];
}
