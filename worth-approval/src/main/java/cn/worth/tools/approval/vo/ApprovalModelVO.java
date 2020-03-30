package cn.worth.tools.approval.vo;

import cn.worth.tools.approval.domain.ApprovalModel;
import cn.worth.tools.approval.domain.ApprovalModelProcess;
import lombok.Getter;
import lombok.Setter;

import java.util.List;

/**
 * @author myireland
 * @version 1.0.0
 * @date 2019-09-17
 * @description
 **/
@Getter
@Setter
public class ApprovalModelVO extends ApprovalModel {

    private List<ApprovalModelProcess> processes;
}
