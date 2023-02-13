package com.liwei.project.service.impl.inner;

import com.liwei.liweiAPIcommon.service.InnerUserInterfaceInfoService;
import com.liwei.project.service.UserInterfaceInfoService;
import com.liwei.liweiAPIcommon.service.InnerUserInterfaceInfoService;
import org.apache.dubbo.config.annotation.DubboService;

import javax.annotation.Resource;

@DubboService
public class InnerUserInterfaceInfoServiceImpl implements InnerUserInterfaceInfoService {

    @Resource
    private UserInterfaceInfoService userInterfaceInfoService;

    @Override
    public boolean invokeCount(long interfaceInfoId, long userId) {
        return userInterfaceInfoService.invokeCount(interfaceInfoId, userId);
    }
}
