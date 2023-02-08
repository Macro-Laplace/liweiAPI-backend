package com.liwei.project.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.liwei.project.model.entity.InterfaceInfo;

/**
 *
 */
public interface InterfaceInfoService extends IService<InterfaceInfo> {

    void validInterfaceInfo(InterfaceInfo interfaceInfo, boolean add);
}
