import 'package:http/http.dart' as http;

// 'https://jsonplaceholder.typicode.com/albums/1'

request(String url, String requestType) {
  Future<http.Response> fetchAlbum() {
    return http.get(Uri.parse(url));
  }
}
