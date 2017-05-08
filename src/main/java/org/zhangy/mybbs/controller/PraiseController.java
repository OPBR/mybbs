package org.zhangy.mybbs.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.zhangy.mybbs.entity.Content;
import org.zhangy.mybbs.entity.Praise;
import org.zhangy.mybbs.entity.User;
import org.zhangy.mybbs.service.ContentService;
import org.zhangy.mybbs.service.PraiseService;
import org.zhangy.mybbs.service.UserService;

import java.util.List;

/**
 * Created by DELL on 2017/4/15.
 */
@Controller
@RequestMapping(value = "/praise")
public class PraiseController {

    @Autowired
    private PraiseService praiseService;

    @Autowired
    private UserService userService;

    @Autowired
    private ContentService contentService;

    @RequestMapping(method = RequestMethod.GET, value = "/addPraise/{username}/{id}")
    public String addPraise(@PathVariable String username, @PathVariable String id, Model model){
        User user = userService.findName(username);
        Content content = contentService.get(id);
        Praise praise = praiseService.findCondition(user, content);
        if (praise == null){
            Praise praise1 = new Praise();
            praise1.setContent(content);
            praise1.setUser(user);
            int count = content.getCount();
            System.out.println(count);
            count += 1;
            System.out.println(count);
            content.setCount(count);
            praiseService.saveOrDelete(praise1);
            contentService.saveOrUpdate(content);
//            return "/user/index";
        } else {
            praiseService.delete(praise.getId());
            int count = content.getCount();
            count -= 1;
            content.setCount(count);
            contentService.saveOrUpdate(content);
        }
        return "redirect:/user/index";
    }

    @RequestMapping(method = {RequestMethod.POST, RequestMethod.GET}, value = "/sort")
    public String sortPraise(Model model){
        List<Content> allByCount = contentService.findAllByCount();
        model.addAttribute("contentList", allByCount);
        return "/index.jsp";
    }
}
