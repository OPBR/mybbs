package org.zhangy.mybbs.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.zhangy.mybbs.dto.json.Response;
import org.zhangy.mybbs.dto.json.impl.SuccessResponse;
import org.zhangy.mybbs.entity.Comment;
import org.zhangy.mybbs.entity.Content;
import org.zhangy.mybbs.entity.User;
import org.zhangy.mybbs.service.CommentService;
import org.zhangy.mybbs.service.ContentService;
import org.zhangy.mybbs.service.UserService;

/**
 * Created by zy on 2017/4/12.
 */
@Controller
@RequestMapping(value = "/comment")
public class CommentController {

    @Autowired
    private CommentService commentService;

    @Autowired
    private ContentService contentService;

    @Autowired
    private UserService userService;


    @RequestMapping(method = RequestMethod.POST, value = "release")
    @ResponseBody
    public Response releaseComment(String username, String id, String info, String current){
        User user = userService.findName(username);
        Comment comment = new Comment();
        comment.setInfo(info);
        comment.setUser(user);
        comment.setCurrent(current);
        Content content = contentService.get(id);
        comment.setContent(content);
        commentService.saveOrUpdate(comment);
//        List<Comment> all = commentService.findContent(content);
//        model.addAttribute("commentList", all);
//        model.addAttribute("content", content);
        return new SuccessResponse();
    }

//    @RequestMapping(method = RequestMethod.POST, value = "/addComment/{id}")
//    public String addComment(@PathVariable String id, Model model){
//        System.out.println("-----======---------+++++-------++=====-=-=-=-==-==");
//        model.addAttribute("id", id);
//        System.out.println(id);
//        return "/addComment.jsp";
//    }
}
