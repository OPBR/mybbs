package org.zhangy.mybbs.dto.json.impl;

import org.zhangy.mybbs.dto.json.Response;

/**
 * Created by zy on 2017/5/11.
 */
public class FailedResponse implements Response {
    public static final String CODE_SUCCESS = "2";
    public static final String MSG_SUCCESS = "";

    public FailedResponse() {
    }

    public String getCode() {
        return "2";
    }

    public String getMsg() {
        return "";
    }
}
