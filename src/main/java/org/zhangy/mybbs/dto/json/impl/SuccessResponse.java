package org.zhangy.mybbs.dto.json.impl;

import org.zhangy.mybbs.dto.json.Response;

/**
 * Created by zy on 2017/5/10.
 */
public class SuccessResponse implements Response {
    public static final String CODE_SUCCESS = "1";
    public static final String MSG_SUCCESS = "";
    private Integer count;

    public SuccessResponse() {
    }

    public String getCode() {
        return "1";
    }

    public String getMsg() {
        return "";
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }
}
