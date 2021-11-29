package dao;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.MapListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;
import utils.JDBCUtils;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

/**
 * @version 1.0
 * @Description 基础的CRUD操作
 * @Author chenmin
 * @Date 2021/11/23 15:18
 */
public class BaseDao<T> {

    private QueryRunner queryRunner = new QueryRunner();

    //查询单个结果
    public Object getSingleValue(String sql , Object...params) throws SQLException {
        Object obj = queryRunner.query(JDBCUtils.getConn(), sql, new ScalarHandler(), params);
        return obj;
    }

    //查询单条记录
    public T getBean(String sql , Class<T> clazz , Object...params) throws SQLException {
        T t = queryRunner.query(JDBCUtils.getConn(), sql, new BeanHandler<>(clazz), params);
        return t;
    }

    //查询多条记录
    public List<T> getBeanList(String sql , Class<T> clazz , Object...params) throws SQLException {
        List<T> list = queryRunner.query(JDBCUtils.getConn(), sql, new BeanListHandler<>(clazz), params);
        return list;
    }

    //增删改
    public int update(String sql , Object...params) throws SQLException {
        int i = queryRunner.update(JDBCUtils.getConn(), sql, params);
        return i;
    }

    //多表查询数据
    public List<Map<String,Object>> getMapList(String sql ,Object...params) throws SQLException {
        List<Map<String, Object>> mapList = queryRunner.query(JDBCUtils.getConn(), sql, new MapListHandler(), params);
        return mapList;
    }
}
