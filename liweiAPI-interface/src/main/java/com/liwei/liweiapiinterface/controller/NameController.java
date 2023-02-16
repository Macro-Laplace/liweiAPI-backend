package com.liwei.liweiapiinterface.controller;


import cn.hutool.http.HttpRequest;
import cn.hutool.http.HttpResponse;

import com.liwei.liweiapiclientsdk.model.User;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

@RestController
@RequestMapping("/name")
public class NameController {

    @GetMapping("/get")
    public String getNameByGet(String name, HttpServletRequest request) {
        System.out.println(request.getHeader("liwei"));
        return "GET 你的名字是" + name;
    }

    @PostMapping("/post")
    public String getNameByPost(@RequestParam String name) {
        return "POST 你的名字是" + name;
    }

    @PostMapping("/user")
    public String getUsernameByPost(@RequestBody User user, HttpServletRequest request) {

       //网关中已经进行校验和记录调用次数，这里就直接调用
//        String result = "POST 用户名字是" + user.getUsername();
//        return result;
        HttpResponse httpResponse = HttpRequest.get("https://api.vvhan.com/api/phone?tel=" + user.getPhoneNumber())
                .execute();
        System.out.println(httpResponse.getStatus());
        String result = httpResponse.body();
        System.out.println(result);
        return result;
    }
}
