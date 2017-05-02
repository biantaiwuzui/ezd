package edu.ezd.dao;

import edu.ezd.model.Post;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by JayJay on 2017/4/11.
 */
public interface PostDao {

    List<Post> findAll(int jobType);
    List<Post> getAll();

    Post getPostInfo(int postId);

    List<Post> getEnterprisePost(int enterpriseid);

    List<Post> getAddressPost(String address,int jobType);

    List<Post> getSalaryPost(double minSalary,double maxSalary,int jobType);

    List<Post> getDescPost(@Param(value="desc") String desc,int jobType);
}
