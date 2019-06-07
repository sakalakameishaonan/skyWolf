package cn.web.tl.interceptor;

import cn.web.tl.entity.Employee;
import cn.web.tl.util.Constants;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 登录检查
 * @author dxq
 * @date 2019-05-31 - 10:46
 */
@Component
public class LoginHandlerInterceptor implements HandlerInterceptor {

    private Logger logger = LoggerFactory.getLogger(LoginHandlerInterceptor.class);

    @Override/*目标方法执行之前*/
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        Employee employee = (Employee) request.getSession().getAttribute(Constants.USER_SESSION);
        logger.info("session检查:"+ employee);
        if (employee == null){
            //未登录 返回登录页
            request.setAttribute("msg","请先登录");
            request.getRequestDispatcher("/login").forward(request,response);
            return false;
        } else {
            //已登录
            return true;
        }
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {

    }
}
