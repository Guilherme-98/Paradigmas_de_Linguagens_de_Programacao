/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tutorial;

import java.io.File;
import jflex.exceptions.SilentExit;


/**
 *
 * @author guilherme
 */
public class Tutorial {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        String path="/home/guilherme/NetBeansProjects/tutorial/src/tutorial/lexer.flex";
                generarLexico(path);
        
        // TODO code application logic here
    }
    public static void generarLexico(String path){
        File file = new File (path);
        String[] ls = {path};
        try {
            jflex.Main.generate(ls);
        }catch(SilentExit e){}
    }
    
}
