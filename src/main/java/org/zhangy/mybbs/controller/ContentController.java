package org.zhangy.mybbs.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.zhangy.mybbs.dto.json.Response;
import org.zhangy.mybbs.dto.json.impl.SuccessResponse;
import org.zhangy.mybbs.entity.Comment;
import org.zhangy.mybbs.entity.Content;
import org.zhangy.mybbs.entity.User;
import org.zhangy.mybbs.service.CommentService;
import org.zhangy.mybbs.service.ContentService;
import org.zhangy.mybbs.service.UserService;

import java.util.Date;
import java.util.List;

/**
 * Created by zy on 2017/4/11.
 */
@Controller
@RequestMapping(value = "/content")
public class ContentController {

    @Autowired
    private ContentService contentService;

    @Autowired
    private UserService userService;

    @Autowired
    private CommentService commentService;

    @RequestMapping(method = RequestMethod.POST, value = "release")
    @ResponseBody
    public Response release(String username, String title, String info, Model model){
        User user = userService.findName(username);
        Content content = new Content();
        content.setUser(user);
        content.setCurrent(new Date());
        content.setTitle(title);
        content.setInfo(info);
        contentService.saveOrUpdate(content);
        List<Content> all = contentService.findAllSort();
        model.addAttribute("contentList", all);
        return new SuccessResponse();
    }

    @RequestMapping(method = RequestMethod.GET, value = "findContent")
    public String findContent(@RequestParam("id") String id, Model model){
        Content content = contentService.get(id);
        model.addAttribute("content", content);
        List<Comment> all = commentService.findContent(content);
        model.addAttribute("commentList", all);
//        List<Comment> all = commentService.findAll();
//        model.addAttribute("commentList", all);
        return "/findContent.jsp";
    }

    @RequestMapping(method = RequestMethod.POST, value = "/updateContent/{id}")
    public String updateContent(@PathVariable String id, Model model){
        Content content = contentService.get(id);
        model.addAttribute("content",content);
        return "/updateContent.jsp";
    }

    @RequestMapping(method = RequestMethod.POST, value = "deleteContent")
    @ResponseBody
    public Response deleteContent(String id){
        contentService.delete(id);
        return new SuccessResponse();
    }

    @RequestMapping(method = RequestMethod.POST, value = "updateSubmit")
    @ResponseBody
    public Response updateSubmit(String id, Content content){
        Content content1 = contentService.get(id);
        content1.setTitle(content.getTitle());
        content1.setInfo(content.getInfo());
        contentService.saveOrUpdate(content1);
        return new SuccessResponse();
    }
    @RequestMapping(method = RequestMethod.POST, value = "/findContent/addComment/{id}")
    public String addComment(@PathVariable String id, Model model){
        model.addAttribute("id", id);
        System.out.println(id);
        return "/addComment.jsp";
    }
}
