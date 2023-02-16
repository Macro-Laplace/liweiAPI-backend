package com.liwei.liweiapiinterface;

import cn.hutool.core.text.UnicodeUtil;
import cn.hutool.http.HttpRequest;
import cn.hutool.http.HttpResponse;
import cn.hutool.http.HttpUtil;
import com.liwei.liweiapiclientsdk.client.LiApiClient;
import com.liwei.liweiapiclientsdk.model.User;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.util.StringUtils;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@SpringBootTest
class LiweiApiInterfaceApplicationTests {

    @Resource
    private LiApiClient liApiClient;

    @Test
    void contextLoads() {
        //String result = HttpUtil.get("https://api.vvhan.com/api/phone?tel=13145211010");
        String result = HttpUtil.get("https://cx.shouji.360.cn/phonearea.php?number=18396279786");
        result=UnicodeUtil.toString(result);
        System.out.println(result);
    }

}
