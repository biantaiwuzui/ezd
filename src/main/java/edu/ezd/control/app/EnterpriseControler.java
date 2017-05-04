package edu.ezd.control.app;

import edu.ezd.model.Enterprise;
import edu.ezd.service.EnterpriseService;
import edu.ezd.util.GsonUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by JayJay on 2017/5/4.
 */
@Controller
@RequestMapping("/enterprise")
public class EnterpriseControler {
    @Resource
    private EnterpriseService enterpriseService;

    @GetMapping(produces = "application/json;charset=UTF-8")
    @ResponseBody
    public String findAll(){
        List<Enterprise> enterprises = enterpriseService.findAll();
        String json = GsonUtil.toJson(enterprises);
        return json;
    }
}
