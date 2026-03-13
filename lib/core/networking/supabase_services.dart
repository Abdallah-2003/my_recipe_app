import 'package:my_recipe/core/networking/api_constants.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseServices {

  static init() async {

    await Supabase.initialize(
      url: ApiConstants.url,
      anonKey: ApiConstants.apiKay,
    );
  }
}