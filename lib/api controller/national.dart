import 'dart:convert';

import 'package:http/http.dart'as http;

class National{
  static national()async{
    String url="https://api.nationalize.io?name=nathaniel";
    Uri uri=Uri.parse(url);
    var response = await http.get(uri);
    var data=jsonDecode(response.body);
    return data;
}
}