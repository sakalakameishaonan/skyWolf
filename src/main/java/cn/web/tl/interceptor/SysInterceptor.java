package cn.web.tl.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.web.tl.entity.Employee;
import cn.web.tl.util.Constants;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

@Service
public class SysInterceptor extends HandlerInterceptorAdapter {

    public boolean preHandle(HttpServletRequest request, HttpServletResponse reponse, Object handler) throws Exception {
        HttpSession session = request.getSession();
        Employee employee = (Employee) session.getAttribute(Constants.USER_SESSION);
        if (employee == null) {
            reponse.sendRedirect(request.getContextPath() + "/401");
            return false;
        }
        return true;
    }
}
