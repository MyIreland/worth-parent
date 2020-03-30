package cn.worth.activiti.controller;

import cn.worth.activiti.service.ModelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author myireland
 * @version 1.0.0
 * @date 2019-09-17
 * @description
 **/
@RestController
@RequestMapping("activiti/model")
public class ModelController {

    @Autowired
    private ModelService modelService;


}
