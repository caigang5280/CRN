package controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/**
 * @version 1.0
 * @Description BasicServlet：通过反射，执行对应的操作
 * @Author chenmin
 * @Date 2021/11/29 11:20
 */
@WebServlet(name="BasicServlet")
public class BasicServlet extends HttpServlet {

    /**
     * 处理请求的方法
     * @param request   请求
     * @param response  响应
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //通过请求参数，获取执行的方法名
        String methodName = request.getParameter("method");

        //获取类类型
        Class<? extends BasicServlet> clazz = this.getClass();
        System.out.println(methodName);
        try {
            //获取方法对象
            Method method = clazz.getDeclaredMethod(methodName, HttpServletRequest.class, HttpServletResponse.class);
            //执行方法
            method.invoke(this, request, response);
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }
    }
}
