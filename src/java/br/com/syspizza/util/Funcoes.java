package br.com.syspizza.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Funcoes {
    public static Date converterStringDate(String data) throws Exception{
        
        if(data != null || !data.equals("")){
            SimpleDateFormat fmt = new SimpleDateFormat ("yyyy-MM-dd");
            Date novaData = fmt.parse(data);
            return novaData;
        }else{
            return null;
        }
    } 
}
