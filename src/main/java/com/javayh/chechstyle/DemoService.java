package com.javayh.chechstyle;

import java.io.SerializablePermission;
import java.util.concurrent.ScheduledExecutorService;
import sun.net.httpserver.HttpServerImpl;


/**
 * <p>
 *
 * </p>
 *
 * @author hai ji
 * @version 1.0.0
 * @since 2024-01-18
 */
public class DemoService {

    /**
     * @param s1                       s1
     * @param s2                       s2
     * @param s3                       s3
     * @param server                   server
     * @param serializablePermission   serializablePermission
     * @param scheduledExecutorService scheduledExecutorService
     */
    public void test(String s1, String s2, String s3, HttpServerImpl server,
                     SerializablePermission serializablePermission, ScheduledExecutorService scheduledExecutorService) {
        String sub = "ww";
        if (sub.equalsIgnoreCase(s1)) {
            s1 = s2;
            if (sub.equalsIgnoreCase(s1)) {
                if (sub.equalsIgnoreCase(s1)) {
                    s1 = s2;

                    if (sub.equalsIgnoreCase(s1)) {
                        s1 = s2;

                    }
                }
            }
        }
    }


}
