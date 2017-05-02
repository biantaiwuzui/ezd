package edu.ezd.control.backgroup;

import edu.ezd.model.TheAttraction;
import edu.ezd.service.TheAttractionService;
import edu.ezd.util.GsonUtil;
import edu.ezd.util.Upload;
import org.apache.log4j.Logger;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/theAttraction")
public class TheAttractionController {

    private static final Logger log = Logger.getLogger(TheAttractionController.class);
    @Resource
    private TheAttractionService theAttractionService;



    @GetMapping(value = "/app",produces = "application/json;charset=UTF-8")
    @ResponseBody
    public String index(){
        List<TheAttraction> theAttractions = theAttractionService.findAll();
        String json = GsonUtil.toJson(theAttractions);
        return json;
    }

    @GetMapping()
    public String pcIndex(Model model){
        List<TheAttraction> theAttractions = theAttractionService.findAll();
        model.addAttribute("theAttractions",theAttractions);
        return "TheAttraction/index";
    }

    /**
     * 进入添加大招会的主页面
     * @return
     */
    @GetMapping("/add")
    public String addIndex(){
        return "TheAttraction/add";
    }

    @PostMapping("/add")
    public String add(MultipartFile file, TheAttraction theAttraction, HttpServletRequest request){
        String url = null;
        try {
            url = Upload.upload(file,request,3);
        } catch (IOException e) {
            e.printStackTrace();
        }
        log.info("上传图片的路径"+url);
        theAttraction.setStartTime(new Date());
        theAttraction.setTheAttractionImg(url);
        boolean bl = theAttractionService.save(theAttraction);
        if(bl){
            log.info("添加成功");
            return "redirect:/theAttraction";
        }else{
            log.info("添加失败");
            return null;
        }

    }

    @GetMapping("/{id}")
    public String getApplicant(@PathVariable int id,Model model){
        log.info("大招会的id"+id);
        TheAttraction theAttraction = theAttractionService.getById(id);
        model.addAttribute("theAttraction",theAttraction);
        return "TheAttraction/applicant";
    }
    @PostMapping(value = "/del/{id}",produces = "application/json;charset=utf-8")
    @ResponseBody
    public  String del(@PathVariable int id){
        log.info("要删除的大招会的id=  "+id);
        boolean bl = theAttractionService.del(id);
        if(bl)
            return "success";
        else
            return "";
    }
    //单个大招会的json
   /* @GetMapping("/{id}")
    @ResponseBody
    public TheAttraction getApplicant(@PathVariable int id,Model model){
        log.info("大招会的id"+id);
        TheAttraction theAttraction = theAttractionService.getById(id);
        model.addAttribute("theAttraction",theAttraction);
        *//*return "TheAttraction/applicant";*//*
        return theAttraction;
    }*/
}
