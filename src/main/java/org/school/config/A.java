/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.school.config;

import com.sun.org.apache.xerces.internal.impl.dv.xs.TimeDV;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.Clock;
import java.time.Instant;
import java.time.LocalTime;
import java.time.ZoneId;
import java.util.Date;
import org.springframework.instrument.classloading.SimpleLoadTimeWeaver;

public class A {

    public static void main(String[] args) {
        String a = new SimpleDateFormat("dd-MM-yyyy HH:mm ").format(new Date());
        String b1 = null;
        b1 = "Sayed";
        System.out.println(b1);
    }

}
