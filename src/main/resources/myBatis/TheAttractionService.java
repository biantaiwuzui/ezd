package edu.ezd.service;

import edu.ezd.dao.TheAttractionApplicantDao;
import edu.ezd.dao.TheAttractionDao;
import edu.ezd.dao.UserInfoDao;
import edu.ezd.dao.UsersDao;
import edu.ezd.model.TheAttraction;
import edu.ezd.model.TheAttractionApplicant;
import edu.ezd.model.UserInfo;
import edu.ezd.model.Users;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * 大招会
 */
@Service
@Transactional
public class TheAttractionService {

    private static final Logger log = Logger.getLogger(TheAttractionService.class);
    @Resource
    private TheAttractionDao theAttractionDao;
    @Resource
    private TheAttractionApplicantDao theAttractionApplicantDao;
    @Resource
    private UserInfoDao userInfoDao;
    @Resource
    private UsersDao usersDao;

    /**
     * 获取所有的大招会的详情
     * @return List<TheAttraction>
     */
    public List<TheAttraction> findAll(){
        List<TheAttraction> theAttractions = theAttractionDao.findAll();
        for (TheAttraction t:theAttractions) {
            log.info("<<<<<<<<<<<"+t.getId());
            List<TheAttractionApplicant> theAttractionApplicants = theAttractionApplicantDao.gettheAttractionApplicant(t.getId());
            for (TheAttractionApplicant tp:theAttractionApplicants) {
                log.info(">>>>>"+tp.getApplicantId());
            }
            t.setTheAttractionApplicants(theAttractionApplicants);
        }
        return theAttractions;
    }

    /**
     * 根据id获取该大招会
     * @param id
     * @return TheAttraction
     */
    public TheAttraction getById(int id){
        TheAttraction theAttraction = new TheAttraction();
        List<TheAttractionApplicant> theAttractionApplicants = theAttractionApplicantDao.gettheAttractionApplicant(id);
        for (TheAttractionApplicant t : theAttractionApplicants){
            log.info("用户的id"+t.getApplicant());
            UserInfo userInfo = userInfoDao.getUserInfo(t.getApplicant());
            Users users = usersDao.getUser(t.getApplicant());
            users.setUserInfo(userInfo);
            t.setUsers(users);
            theAttraction.setTheAttractionApplicants(theAttractionApplicants);
        }
        return theAttraction;

    }

    /**
     * 添加大招会
     * @param theAttraction
     * @return true
     */
    public boolean save(TheAttraction theAttraction){
        try{
            theAttractionDao.save(theAttraction);
            return true;
        }catch (Exception e){
            e.getCause();
            return false;
        }
    }

    public boolean del(int id){
        try{
            int status = 2;
            log.info("删除的大招会的状态" + status);
            theAttractionDao.update(status,id);
            return true;
        }catch (Exception e){
            e.printStackTrace();
            return false;
        }
    }
}
