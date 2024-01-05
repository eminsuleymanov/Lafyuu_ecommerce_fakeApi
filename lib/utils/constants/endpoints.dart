
class Endpoints {
  Endpoints._();
  static const _baseUrl = "http://164.92.128.223:8000";

  static const _products = "$_baseUrl/products";
  static const categories = "$_products/categories";
  static const mega = "$_products/mega";
  static const flash = "$_products/flash";
  
  static const _users = "$_baseUrl/users";

  static const register = "$_users/register";
  static const login = "$_users/login";
}