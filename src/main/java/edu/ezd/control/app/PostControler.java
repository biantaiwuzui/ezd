package edu.ezd.control.app;

import com.google.gson.Gson;
import edu.ezd.model.Post;
import edu.ezd.service.PostService;
import edu.ezd.util.GsonUtil;
import edu.ezd.util.JsonUtils;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by JayJay on 2017/4/24.
 */
@Controller
@RequestMapping("/post")
public class PostControler {
    private final  Logger log = Logger.getLogger(this.getClass());
    @Resource
    private PostService postService;

    @GetMapping
    public String index(){
        return "post/index";
    }

    @GetMapping("/postinfo")
    public String postInfo(){
        return "post/postinfo";
    }

    /**
     * 查询所有
     * @return
     */
    @GetMapping(value = "/findAll", produces = "application/json;charset=UTF-8")
    @ResponseBody
    public String findAll(){
        List<Post> posts = postService.findAll();


        String json = GsonUtil.toJson(posts);
        log.info(json);
        return json;
    }

    /**
     * 根据地址来筛选
     * @param address 地址（模糊）
     * @return
     */
    @GetMapping(value = "/address/{address}", produces = "application/json;charset=UTF-8")
    @ResponseBody
    public String address(@PathVariable String address){
        List<Post> posts = postService.addressPost(address);
        String json = GsonUtil.toJson(posts);
        log.info(json);
        return json;
    }

    /**
     * 其他排序筛选
     * @param desc 排序（默认排序，查看最多，最新发布）
     * @return
     */
    @GetMapping(value = "/desc/{desc}", produces = "application/json;charset=UTF-8")
    @ResponseBody
    public String desc(@PathVariable String desc){
        if(desc.equals("默认排序")){
            return findAll();
        }else {
            List<Post> posts = postService.descPost(desc);
            String json = GsonUtil.toJson(posts);
            log.info(json);
            return json;
        }
    }

    /**
     * 根据工资范围筛选
     * @param minsalary 最低工资
     * @param maxsalary 最高工资
     * @return
     */
    @GetMapping(value = "/salary/{minsalary}/{maxsalary}", produces = "application/json;charset=UTF-8")
    @ResponseBody
    public String salary(@PathVariable double minsalary,@PathVariable double maxsalary){

        List<Post> posts = postService.salaryPost(minsalary,maxsalary);
        String json = GsonUtil.toJson(posts);
        log.info(json);
        return json;
    }

    /**
     * 根据id获取详情
     * @param id
     * @return
     */
    @GetMapping( value = "/find/{id}", produces = "application/json;charset=UTF-8")
    @ResponseBody
    public String find(@PathVariable int id){
        Post post = postService.getPostInfo(id);
        String json = GsonUtil.toJson(post);
        return json;
    }



}
