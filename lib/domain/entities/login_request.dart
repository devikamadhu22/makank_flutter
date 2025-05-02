class LoginRequest {
  final String mobileNumber;
  final String password;
  final int loginType;
  final String deviceId;
  final int deviceType;
  final int appId;
  final String mobileOs;
  final String appVersion;
  final String mobileDeviceName;

  LoginRequest({
    required this.mobileNumber,
    required this.password,
    required this.loginType,
    required this.deviceId,
    required this.deviceType,
    required this.appId,
    required this.mobileOs,
    required this.appVersion,
    required this.mobileDeviceName,
  });

  Map<String, dynamic> toJson() {
    return {
      "mobile_number": mobileNumber,
      "password": password,
      "login_type": loginType,
      "device_id": deviceId,
      "device_type": deviceType,
      "app_id": appId,
      "mobile_os": mobileOs,
      "app_version": appVersion,
      "mobile_device_name": mobileDeviceName,
    };
  }
}
