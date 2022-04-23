package com.myfile;
import java.io.*;
import java.util.*;

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
  public static String getRandomPeer(String fileName) {
        String all ="";
        boolean isInterface = false;
        boolean isPeer = false;
        /*
        try {
            FileReader fr = new FileReader(new File(file));
            
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
	br.close();
	fr.close();
    } catch (FileNotFoundException e){}
    catch (IOException e) {}
    */
        String encoding = "UTF-8";
        File file = new File(fileName);
        Long filelength = file.length();
        byte[] filecontent = new byte[filelength.intValue()];
        try {
            FileInputStream in = new FileInputStream(file);
            in.read(filecontent);
            in.close();
        } catch (FileNotFoundException e) {} catch (IOException e) {}
        try {
            all = new String(filecontent, encoding); } catch (UnsupportedEncodingException e) {}
        String split[] = all.split("\\n", 0);
        ArrayList<String> wg_interface = new ArrayList<>();
        ArrayList<String> wg_peer = new ArrayList<>();
         List<Integer> mark = new ArrayList<>(); 
        int count = 0;
        for(int i=0;i<split.length;i++){
            if(split[i].contains("Interface") ) {
                    isInterface = true; }
            if (split[i].contains("Peer") ) {
            	count = count+1;
                    isPeer = true;}
              if(isInterface && !isPeer){
              	wg_interface.add(split[i]); }
              if (split[i].contains("Peer") ) {
                    isInterface = false; 
                    isPeer = true;}
              if (isPeer) {
              	wg_peer.add(split[i]); }
        }
        int index = (int)(Math.random()*(count));
        
        all = "";
        for(int i=0;i<wg_interface.size();i++){
        	all = all + wg_interface.get(i) + "\n"; }
        
        count=0;
        
        for(int i=0; i<wg_peer.size(); i++){
        	if(wg_peer.get(i).contains("Peer") ){
        	    mark.add(i);
        	}
        }
        
        int j = mark.get(index);
        boolean complete = false;
        
        for(int i=j; i<wg_peer.size(); i++){
        	if (wg_peer.get(i) == ""){ continue ;}
            if(!complete){
            	all = all + wg_peer.get(i) + "\n";   } 
            if((i < wg_peer.size()-1 ) && wg_peer.get(i+1).contains("Peer") ){
            	break ;
            }
        }
      //  appendLog(all);
     /*
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
  appendLog(wg_peer);
  appendLog(wg_interface);
  appendLog(String.valueOf(len1) );
  appendLog(String.valueOf(len2) );
  appendLog(String.valueOf(len3) );
  appendLog(String.valueOf(index) );
  appendLog(String.valueOf(average) );
*/
  //wg_interface = wg_interface + wg_peer.substring(index * average, (index+1) * average  ) ;
  
 // String ret  = "/storage/emulated/0/tmp.conf" ;

   String ret  = "/data/user/0/com.tunsafe.app/files/Config/tmp.conf" ;
   
  File logFile = new File(ret);
    try{
         logFile.delete();
         logFile.createNewFile();
         BufferedWriter buf = new BufferedWriter(new FileWriter(logFile, true)); 
      buf.append(all);
      buf.newLine();
      buf.close();
      } 
      catch (IOException e){}
        return ret ;
       // return all;
    }
}
