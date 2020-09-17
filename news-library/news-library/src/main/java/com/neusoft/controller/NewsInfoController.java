package com.neusoft.controller;

import com.neusoft.po.Author;
import com.neusoft.po.NewsInfo;
import com.neusoft.service.NewsInfoService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * @author shenqingwen
 * @date 2020/9/11
 **/
@Controller
public class NewsInfoController {

    @Autowired
    NewsInfoService newsInfoService;

    @RequestMapping("/searchInfo")

//    方法一：
    public String searchNewsInfo(Model model){
        String message = "新闻编号 新闻标题 新闻类型 撰稿作者";
        List<NewsInfo> newsList = newsInfoService.allNewsInfo();
        model.addAttribute("message", message);
        model.addAttribute("newsList", newsList);
        return "show";
    }

//    方法二：
//    public ModelAndView selectUser() throws Exception {
//        ModelAndView mv = new ModelAndView();
//        String message = "新闻编号 新闻标题 新闻类型 撰稿作者";
//        List<NewsInfo> newsList = newsInfoService.allNewsInfo();
//        for (NewsInfo newsInfo:newsList) {
////            System.out.print(newsInfo);
//            System.out.print(newsInfo.getNewsno()+"\t");
//            System.out.println(newsInfo.getNews_title()+"\t");
//            System.out.println(newsInfo.getType().getNews_typename()+"\t");
//            System.out.println(newsInfo.getAuthor().getAuthorname()+"\n");
//        }
//        mv.addObject("message", message);
//        mv.addObject("newsList", newsList);   //此处左侧 “newsList” 是对应view层文件里面用来接收右侧 newsList 变量的变量名
//        mv.setViewName("show");  //此处的 “show” 是对应view层文件名
//        return mv;
//    }
}
