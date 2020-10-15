import 'dart:convert';
 
import 'package:http/http.dart' as http;
 
class URLS {
 static const String BASE_URL = 'https://postman-echo.com/get?name=John&foo2=bar2';
}
 
class ApiService {
 static Future<Map<String, dynamic>> getEmployees() async {
   // RESPONSE JSON :
   // [{
   //   "id": "1",
   //   "employee_name": "",
   //   "employee_salary": "0",
   //   "employee_age": "0",
   //   "profile_image": ""
   // }]
   final response = await http.get('${URLS.BASE_URL}');
   if (response.statusCode == 200) {
     return json.decode(response.body);
   } else {
     return null;
   }
 }
 
 static Future<bool> addEmployee(body) async {
   // BODY
   // {
   //   "name": "test",
   //   "age": "23"
   // }
   final response = await http.post('${URLS.BASE_URL}/create', body: body);
   if (response.statusCode == 200) {
     return true;
   } else {
     return false;
   }
 }
}