package com.myfile.MyIP;

public class MyIP {
	/*
  public static void main(String[] args){
  String address = "192.168.1.1";
  String address2 = getNextIPV4Address(address);
  System.out.println(address2);
  }
  */
  public static String getNextIPV4Address(String ip) {
    String[] nums = ip.split("\\.");
    int i = (Integer.parseInt(nums[0]) << 24 | Integer.parseInt(nums[2]) << 8
          |  Integer.parseInt(nums[1]) << 16 | Integer.parseInt(nums[3])) + 1;
    // If you wish to skip over .255 addresses.
    if ((byte) i == -1) i++;
    return String.format("%d.%d.%d.%d", i >>> 24 & 0xFF, i >> 16 & 0xFF,
                                        i >>   8 & 0xFF, i >>  0 & 0xFF);  }
public static String getPrevIPV4Address(String ip) {
  String[] nums = ip.split("\\.");
  String result = nums[0] + "." + nums[1] + "." + nums[2] + "." ;
  int i = Integer.parseInt(nums[3]) - 1 ;
  result = result + String.valueOf(i);
  return result ;
 }
 public static String getRandomIP(String ip){
 	/*
	double min = 0.1;
     double max = 0.5;
	int random1 = (int)(max * Math.random() + min);
	/try {
		Thread.sleep(random1 * 1000);
	} catch (InterruptedException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	*/
  int[] delay = {-1, 1, 2, 3 };  
  //java.util.Random random = new java.util.Random();
 // int index = random.nextInt(delay.length + 1);
 int index = (int)(Math.random()*(delay.length));
  if(index == 0){
  	return getPrevIPV4Address(ip);
}
else if(index == 1){
  	return getNextIPV4Address(ip);
}
else if(index == 2 ){
	String ip1 = getNextIPV4Address(ip);
  	return getNextIPV4Address(ip1);
}
else{
	String ip1 = getNextIPV4Address(ip);
	String ip2 = getNextIPV4Address(ip1);
  	return getNextIPV4Address(ip2);
}
}
}
