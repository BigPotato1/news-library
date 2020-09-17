package com.neusoft.service;

import com.neusoft.mapper.NewsInfoMapper;
import com.neusoft.po.NewsInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * @author shenqingwen
 * @date 2020/9/11
 **/
@Service
public class NewsInfoServiceImpl implements NewsInfoService  {

    @Resource
    NewsInfoMapper newsInfoMapper;

    @Override
    public List<NewsInfo> allNewsInfo() {
//        List<NewsInfo> newsInfoList=new ArrayList<NewsInfo>();
//        newsInfoList=newsInfoMapper.findnewsInfoMap();
        List<NewsInfo> newsInfoList = newsInfoMapper.findnewsInfoMap();
        return newsInfoList;
    }
}
