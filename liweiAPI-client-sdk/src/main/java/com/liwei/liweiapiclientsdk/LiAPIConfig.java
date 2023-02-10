package com.liwei.liweiapiclientsdk;

import com.liwei.liweiapiclientsdk.client.LiApiClient;
import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

/**
 * @author Macro-Laplace
 * @version 1.0
 * @date 2023/2/10 14:13
 * @description: TODO
 */
@Configuration
@ConfigurationProperties("liapi.client")
@Data
@ComponentScan
public class LiAPIConfig {
    private String accessKey;

    private String secretKey;

    @Bean
    public LiApiClient yuApiClient() {
        return new LiApiClient(accessKey, secretKey);
    }
}
