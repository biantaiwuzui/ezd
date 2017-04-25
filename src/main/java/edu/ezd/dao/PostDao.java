package edu.ezd.dao;

import edu.ezd.model.Post;

import java.util.List;

/**
 * Created by JayJay on 2017/4/11.
 */
public interface PostDao {

    List<Post> findAll();

    Post getPostInfo(int postId);
}
