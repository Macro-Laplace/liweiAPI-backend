package com.liwei.project.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.liwei.liweiAPIcommon.model.entity.UserInterfaceInfo;

import java.util.List;

/**
 * @Entity com.liwei.project.model.entity.UserInterfaceInfo
 */
public interface UserInterfaceInfoMapper extends BaseMapper<UserInterfaceInfo> {
    List<UserInterfaceInfo> listTopInvokeInterfaceInfo(int limit);
}




