package cn.worth.applet.vos;

import lombok.Getter;
import lombok.Setter;

/**
 * @author myireland
 * @version 1.0.0
 * @date 2019-11-15
 * @description
 **/
@Getter
@Setter
public class AppletApiBaseVO {
    /**
     * {"errcode":40029,"errmsg":"invalid code, hints: [ req_id: dihfgXXBe-Z2Jcya ]"}
     */

    private String errcode;

    private String errmsg;
}
