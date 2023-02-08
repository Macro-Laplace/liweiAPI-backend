package com.liwei.project.model.vo;

import com.liwei.project.model.entity.Post;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 帖子视图
 *
 * 
 * @TableName product
 */
@EqualsAndHashCode(callSuper = true)
@Data
public class PostVO extends Post {

    /**
     * 是否已点赞
     */
    private Boolean hasThumb;

    private static final long serialVersionUID = 1L;
}