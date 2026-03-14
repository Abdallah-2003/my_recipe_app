abstract class ApiConstants {
  static const String url = 'https://plpcoyviivcbqmqmqlur.supabase.co';
  static const String apiKay = 'sb_publishable_TXxQJrLL9Mfd1rCzspxnzA_wS-hBIuv';
  static const String baseUrl = 'https://www.themealdb.com/api/json/v1/1/';
  static const String categoriesEndPoint = '${baseUrl}categories.php';
  static String categoryEndPoint(String category) {
    return '${baseUrl}filter.php?c=$category';
  }

  static String detailsEndPoint(String id) {
    return '${baseUrl}lookup.php?i=$id';
  }
}
