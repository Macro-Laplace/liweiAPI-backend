package com.liwei.liweiapiinterface;

import com.liwei.liweiapiclientsdk.client.LiApiClient;
import com.liwei.liweiapiclientsdk.model.User;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import javax.annotation.Resource;

@SpringBootTest
class LiweiApiInterfaceApplicationTests {

    @Resource
    private LiApiClient liApiClient;

    @Test
    void contextLoads() {
        String result = liApiClient.getNameByGet("liwei");
        User user = new User();
        user.setUsername("liwei");
        String usernameByPost = liApiClient.getUsernameByPost(user);
        System.out.println(result);
        System.out.println(usernameByPost);
    }

}
