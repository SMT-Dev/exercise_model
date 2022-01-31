package com.cisl.smt.web.Temp;

import lombok.Data;

/**
 * @Author qxy
 * @Date 2022/1/31 18:48
 * @Version 1.0
 */
@Data
public class FileInfo {
    //特别用于文件上传的返回类型
    private String info;
    private String option;
    private String url;

    public FileInfo() {
    }

    public FileInfo(String info, String option, String url) {
        this.info = info;
        this.option = option;
        this.url = url;
    }
}
