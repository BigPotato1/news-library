package com.neusoft.mapper;

import com.neusoft.po.NewsInfo;

import java.util.List;

/**
 * @author shenqingwen
 * @date 2020/9/11
 **/
public interface NewsInfoMapper {

    /* public void insertAuthor(Author author);
    public void deleteAuthor(String authorid);


    public void insertNewsType(NewsType newsType);
    public void deleteType(int news_typeid);


    public void insertNewsInfo(NewsInfo newsInfo);
    public void deleteInfo(String userno);*/
    public List<NewsInfo> findnewsInfoMap();

}
