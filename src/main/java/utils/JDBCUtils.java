package utils;

import com.mchange.v2.c3p0.ComboPooledDataSource;

import java.sql.Connection;
import java.sql.SQLException;

/**
 * @version 1.0
 * @Description JDBC工具类
 * @Author chenmin
 * @Date 2021/11/23 15:10
 */
public class JDBCUtils {

    //创建数据源
    private static ComboPooledDataSource dataSource = new ComboPooledDataSource("mysql");

    //创建线程变量
    private static ThreadLocal<Connection> tl = new ThreadLocal<>();

    //获得连接的方法
    public static Connection getConn(){
        Connection connection = tl.get();
        try {
            if(connection==null || connection.isClosed()){
                connection = dataSource.getConnection();
                tl.set(connection);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return connection;
    }

    //关闭资源的方法
    public static void close(){
        Connection connection =  getConn();
        if(connection!=null){
            try {
                connection.close();
                tl.remove();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    public static void main(String[] args) {
        System.out.println(getConn());
    }
}
