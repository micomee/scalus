package com.myfile.MyFile;
import java.io.*;

public class MyFile
{
	public static void appendLog(String text)
{       
   File logFile = new File("/storage/emulated/0/log.txt");
   if (!logFile.exists())
   {
      try
      {
         logFile.createNewFile();
      } 
      catch (IOException e)
      {
         // TODO Auto-generated catch block
         e.printStackTrace();
      }
   }
   try
   {
      //BufferedWriter for performance, true to set append to file flag
      BufferedWriter buf = new BufferedWriter(new FileWriter(logFile, true)); 
      buf.append(text);
      buf.newLine();
      buf.close();
   }
   catch (IOException e)
   {
      // TODO Auto-generated catch block
      e.printStackTrace();
   }
}
  public static void touchFile(String text)
{       
	
   File logFile = new File("/storage/emulated/0/tmp.conf");
    try{
         logFile.delete();
         logFile.createNewFile();
         BufferedWriter buf = new BufferedWriter(new FileWriter(logFile, true)); 
      buf.append(text);
      buf.newLine();
      buf.close();
      } 
      catch (IOException e)
      {
         // TODO Auto-generated catch block
         e.printStackTrace();
      }
  }
public static void updateFile(String text)
{       
    try{
         FileReader file = new FileReader("/storage/emulated/0/tmp.conf");
         BufferedReader buffer = new BufferedReader(file);
         String tmp = buffer.readLine();
         buffer.close();
         file.close();
         
         
         String name = tmp.split("\\.")[0];
         File logFile = new File("/storage/emulated/0/"+name+".conf");
         logFile.delete();
         logFile.createNewFile();
         BufferedWriter buf = new BufferedWriter(new FileWriter(logFile, true)); 
      buf.append(text);
      buf.newLine();
      buf.close();
      
      } 
      catch (IOException e)
      {
         // TODO Auto-generated catch block
         e.printStackTrace();
      }
  }
  public static String getRandomPeer(String file) {
        String result = "";
        String wg_interface = "";
        String wg_peer = "";
        try {
            FileReader fr = new FileReader(new File(file));
            boolean isInterface = false;
            boolean isPeer = false;
            BufferedReader br = new BufferedReader(fr);
            String line = br.readLine();
            while (line != null) {
                if (line.contains("Interface") ) {
                    isInterface = true; }
                if (line.contains("Peer") ) {
                    isPeer = true;}
                if(isInterface && !isPeer){
                	wg_interface = wg_interface + line + "\n";
                }
                if (line.contains("Peer") ) {
                    isInterface = false; 
                    isPeer = true;}
                if(isPeer){
                	wg_peer = wg_peer + line + "\n";
                }
                line = br.readLine(); 
}
    } catch (FileNotFoundException e){}
    catch (IOException e) {}
    
    String str= wg_peer;
    String newStr="Peer";
    int count=0;
    int i=0;
    int len1=str.length();
    String str1=str.replaceAll(newStr,"");
    int len2=str1.length();
    
    int len3 = (len1 - len2) / newStr.length() ;
    int index = (int)(Math.random()*(len3));
    
    int average = wg_peer.length() / len3 ;
    // wg_interface = wg_interface + String.valueOf(index) + wg_peer;
  // wg_interface = wg_interface + String.valueOf(len1) + wg_peer.substring(index * average, (index+1) * average -1 ) + String.valueOf(average) ;
  wg_interface = wg_interface + wg_peer.substring(index * average, (index+1) * average -1 ) ;
  
 // String ret  = "/storage/emulated/0/tmp.conf" ;
   String ret  = "/data/user/0/com.tunsafe.app/files/Config/tmp.conf" ;
   
  File logFile = new File(ret);
    try{
         logFile.delete();
         logFile.createNewFile();
         BufferedWriter buf = new BufferedWriter(new FileWriter(logFile, true)); 
      buf.append(wg_interface);
      buf.newLine();
      buf.close();
      } 
      catch (IOException e){}
        return ret ;
    }
}
