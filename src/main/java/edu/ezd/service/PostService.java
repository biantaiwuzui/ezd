package edu.ezd.service;

import edu.ezd.dao.*;
import edu.ezd.model.*;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by JayJay on 2017/4/24.
 */
@Service
@Transactional
public class PostService {
    @Resource
    private PostDao postDao;
    @Resource
    private RecruitmentDetailsDao recruitmentDetailsDao;
    @Resource
    private RecruitmentDetailsTypeDao recruitmentDetailsTypeDao;
    @Resource
    private EnterpriseDao enterpriseDao;
    @Resource
    private EnterpriseTypeDao enterpriseTypeDao;
    @Resource
    private PostBrowseDao postBrowseDao;
    @Resource
    private PositionNameDao positionNameDao;

    public List<Post> getAll(){
        List<Post> posts = postDao.getAll();
        for (Post p : posts){
            Enterprise enterprise = enterpriseDao.getEnterprise(p.getEnterpriseId());
            RecruitmentDetails recruitmentDetails = recruitmentDetailsDao.getRecruitmentDetails(p.getPostId());
            List<PostBrowse> postBrowses = postBrowseDao.getSome(p.getPostId());
            p.setEnterprise(enterprise);
            p.setRecruitmentDetails(recruitmentDetails);
            p.setPostBrowses(postBrowses);

        }
        return posts;
    }

    public List<Post> findAll(int jobType){
        List<Post> posts = postDao.findAll(jobType);
        for (Post p : posts){
            Enterprise enterprise = enterpriseDao.getEnterprise(p.getEnterpriseId());
            RecruitmentDetails recruitmentDetails = recruitmentDetailsDao.getRecruitmentDetails(p.getPostId());
            List<PostBrowse> postBrowses = postBrowseDao.getSome(p.getPostId());
            p.setEnterprise(enterprise);
            p.setRecruitmentDetails(recruitmentDetails);
            p.setPostBrowses(postBrowses);

        }
        return posts;
    }

    public List<Post> addressPost(String address,int jobType){
        List<Post> posts = postDao.getAddressPost(address,jobType);
        for (Post p : posts){
            Enterprise enterprise = enterpriseDao.getEnterprise(p.getEnterpriseId());
            RecruitmentDetails recruitmentDetails = recruitmentDetailsDao.getRecruitmentDetails(p.getPostId());
            List<PostBrowse> postBrowses = postBrowseDao.getSome(p.getPostId());
            p.setEnterprise(enterprise);
            p.setRecruitmentDetails(recruitmentDetails);
            p.setPostBrowses(postBrowses);

        }
        return posts;
    }

    public List<Post> descPost(String desc,int jobType){
        List<Post> posts = postDao.getDescPost(desc,jobType);
        for (Post p : posts){
            Enterprise enterprise = enterpriseDao.getEnterprise(p.getEnterpriseId());
            RecruitmentDetails recruitmentDetails = recruitmentDetailsDao.getRecruitmentDetails(p.getPostId());
            List<PostBrowse> postBrowses = postBrowseDao.getSome(p.getPostId());
            p.setEnterprise(enterprise);
            p.setRecruitmentDetails(recruitmentDetails);
            p.setPostBrowses(postBrowses);

        }
        return posts;
    }

    public List<Post> salaryPost(double minsalary,double maxsalary,int jobType){
        List<Post> posts = postDao.getSalaryPost(minsalary,maxsalary,jobType);
        for (Post p : posts){
            Enterprise enterprise = enterpriseDao.getEnterprise(p.getEnterpriseId());
            RecruitmentDetails recruitmentDetails = recruitmentDetailsDao.getRecruitmentDetails(p.getPostId());
            List<PostBrowse> postBrowses = postBrowseDao.getSome(p.getPostId());
            p.setEnterprise(enterprise);
            p.setRecruitmentDetails(recruitmentDetails);
            p.setPostBrowses(postBrowses);

        }
        return posts;
    }

    public Post getPostInfo(int postId){
        Post post = postDao.getPostInfo(postId);
        Enterprise enterprise = enterpriseDao.getEnterprise(post.getEnterpriseId());
            EnterpriseType enterpriseType = enterpriseTypeDao.getEnterpriseType(enterprise.getEnterpriseTypeId());
            List<Post> enterprisePosts = postDao.getEnterprisePost(post.getEnterpriseId());
            enterprise.setPosts(enterprisePosts);
            enterprise.setEnterpriseType(enterpriseType);
        RecruitmentDetails recruitmentDetails = recruitmentDetailsDao.getRecruitmentDetails(post.getPostId());
            RecruitmentDetailsType recruitmentDetailsType = recruitmentDetailsTypeDao.getOne(recruitmentDetails.getJobType());
            recruitmentDetails.setRecruitmentDetailsType(recruitmentDetailsType);
        PositionName positionName = positionNameDao.getOne(post.getPositionNameId());
        List<PostBrowse> postBrowses = postBrowseDao.getSome(post.getPostId());
        post.setEnterprise(enterprise);
        post.setRecruitmentDetails(recruitmentDetails);
        post.setPositionName(positionName);
        post.setPostBrowses(postBrowses);
        return post;
    }
}
