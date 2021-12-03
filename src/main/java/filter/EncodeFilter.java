package filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

/**
 * EncodeFilter  编码集过滤器
 * 1.实现Filter接口
 * 2.重写Filter接口中方法：destroy()、init(config)、doFilter(req,resp,chain)
 * 3.加上注解
 *      @WebFilter(
 *          filterName="过滤器名字",
 *          urlPatterns="/过滤的路径",
 *          initParams = {@WebInitParam(name = "过滤器初始化参数名",value = "过滤器初始化参数值")}
 *      )
 *   PS:
 *   1.过滤器名字决定了发起的请求，先后经过过滤器的顺序
 *   2./*  代表对所有请求，都进行过滤
 *   3./不能丢的
 *
 * 4.过滤器的作用
 *   适合统一处理公共功能，代码维护性和拓展性更好
 */
@WebFilter(filterName = "f1",urlPatterns = "/*",initParams = {@WebInitParam(name = "encode",value = "utf8")})
public class EncodeFilter implements Filter {

    private String encode;

    public EncodeFilter(){

    }

    //销毁方法
    public void destroy() {

    }

    /**
     * 过滤方法
     * @param req   请求
     * @param resp  响应
     * @param chain 过滤链
     * @throws ServletException
     * @throws IOException
     */
    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        System.out.println("EncodeFilter doFilter...");

        String uri = ((HttpServletRequest) req).getRequestURI();
        System.out.println(uri);

        //对请求做中文友好
        req.setCharacterEncoding(encode);
        //对响应做中文友好
        //resp.setContentType("text/html;charset="+encode);
        resp.setCharacterEncoding(encode);
        //过滤链  链接到下一个资源，下一个资源：可能是过滤器，也可能是目标资源
          chain.doFilter(req,resp);

    }

    //初始化方法
    public void init(FilterConfig config) throws ServletException {
        encode = config.getInitParameter("encode");
        System.out.println("EncodeFilter 初始化 "+encode);
    }

}
