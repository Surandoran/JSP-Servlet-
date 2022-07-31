package com.example.cosviewmain.controller.auth;

import com.example.cosviewmain.controller.SubController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class IdCheckController implements SubController {
    @Override
    public void execute(HttpServletRequest req, HttpServletResponse resp) {

        try {
            req.getRequestDispatcher("/WEB-INF/view/login/confirmId.jsp").forward(req, resp);
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}
