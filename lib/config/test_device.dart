class TestDevice{
  double dp1;
  double dp2;
  TestDevice({required this.dp1, required this.dp2});
}
/*Test Device 1: Redmi K60 Ultra
 Width: 973.38dp，
 Height: 438.02dp
*/
class TestDeviceCollection{
  static late TestDevice mobile;
  static late TestDevice desktop;
  static void init(){
    mobile = TestDevice(dp1: 937.38, dp2: 438.02);
    desktop = TestDevice(dp1: 0, dp2: 0);// 未测试
  }
}