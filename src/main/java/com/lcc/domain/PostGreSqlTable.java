package com.lcc.domain;

public class PostGreSqlTable {

    private String databaseName;   // 数据库，表属于哪个数据库
    private String tableName;      // 表名
    private int    numRecore;      // 要生成数据量是多少
    private String    model;       // 模型是什么

    /**
     * String[0] => 字段名称是什么
     * String[1] => 字段类型
     * String[2] => 这个规则很重要，可以写正则表达式，可以写代码
     *
     */
    private String[]  fieldAttr; // 每列的属性

    public String getDatabaseName() {
        return databaseName;
    }

    public void setDatabaseName(String databaseName) {
        this.databaseName = databaseName;
    }

    public String getTableName() {
        return tableName;
    }

    public void setTableName(String tableName) {
        this.tableName = tableName;
    }

    public int getNumRecore() {
        return numRecore;
    }

    public void setNumRecore(int numRecore) {
        this.numRecore = numRecore;
    }

    public String[] getFieldAttr() {
        return fieldAttr;
    }

    public void setFieldAttr(String[] fieldAttr) {
        this.fieldAttr = fieldAttr;
    }
}
