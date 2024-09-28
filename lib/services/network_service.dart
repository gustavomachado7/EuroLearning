import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:network_info_plus/network_info_plus.dart';

class NetworkService {
  Future<bool> isConnectedToCompanyWiFi() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.wifi) {
      var wifiName = await (NetworkInfo().getWifiIP());
      return wifiName == '';
    }
    return false;
  }
}
