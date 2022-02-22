package com.jjobplanet.jjobplanet.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;


import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ErrorHandleController {
    
    private final String VIEW_PATH = "/error/";

    @GetMapping("/error")
    public String handleError(HttpServletRequest request)
    {
        Object o = request.getAttribute(RequestDispatcher.ERROR_STATUS_CODE);
 
        if(o != null) 
        {
            int status = Integer.valueOf(o.toString());

            if(status == HttpStatus.NOT_FOUND.value()) return VIEW_PATH + 404;
            if(status == HttpStatus.INTERNAL_SERVER_ERROR.value()) return VIEW_PATH + 500;
        }

        return "error";
    }
}
