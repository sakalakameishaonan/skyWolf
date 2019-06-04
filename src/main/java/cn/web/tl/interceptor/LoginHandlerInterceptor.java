package cn.web.tl.interceptor;

import cn.web.tl.util.Constants;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 登录检查
 * @author dxq
 * @date 2019-05-31 - 10:46
 */
public class LoginHandlerInterceptor implements HandlerInterceptor {
    @Override/*目标方法执行之前*/
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        Object user = request.getSession().getAttribute(Constants.USER_SESSION);
        if (user == null){
            //未登录 返回登录页
            request.setAttribute("msg","请先登录");
            request.getRequestDispatcher("/admin.html").forward(request,response);
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
