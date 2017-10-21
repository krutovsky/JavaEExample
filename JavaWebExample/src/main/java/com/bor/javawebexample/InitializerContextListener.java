/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bor.javawebexample;


import com.bor.javawebexample.fs.Configuration;
import java.io.BufferedOutputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.PrintStream;
import java.util.Date;
import java.util.logging.FileHandler;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import org.yaml.snakeyaml.Yaml;

/**
 *
 * @author leon
 */
public class InitializerContextListener implements ServletContextListener {

    private static final String ATTRIBUTE_NAME = "config";
    private static Configuration conf = null;

    @Override
    public void contextInitialized(ServletContextEvent event) {

        if (conf == null) {
            InputStream input = getClass().getClassLoader().getResourceAsStream("/config.yml");            
            if (input == null) {
                conf = new Configuration(); //default
            } else {
                conf = new Yaml().loadAs(input, Configuration.class);
            }
        }        
        event.getServletContext().setAttribute(ATTRIBUTE_NAME, conf);        
        
        try {
            System.setOut(new PrintStream(new BufferedOutputStream(new FileOutputStream(conf.getLogFilePath(), true)), true));
        } catch (FileNotFoundException ex) {
            Logger.getLogger(InitializerContextListener.class.getName()).log(Level.SEVERE, null, ex);
        }
   }

    @Override
    public void contextDestroyed(ServletContextEvent event) {
        // NOOP.
    }
}
