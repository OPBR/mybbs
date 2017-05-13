package org.zhangy.mybbs.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.zhangy.mybbs.dto.json.Response;
import org.zhangy.mybbs.dto.json.impl.FailedResponse;
import org.zhangy.mybbs.dto.json.impl.SuccessResponse;
import org.zhangy.mybbs.entity.Content;
import org.zhangy.mybbs.entity.User;
import org.zhangy.mybbs.service.ContentService;
import org.zhangy.mybbs.service.PraiseService;
import org.zhangy.mybbs.service.UserService;
import org.zhangy.mybbs.util.DESTest;
import org.zhangy.mybbs.util.Md5Util;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by DELL on 2017/4/10.
 */
@Controller
@RequestMapping(value = "/user")
public class UserController {

    @Autowired
    private UserService userService;

    @Autowired
    private ContentService contentService;

    @Autowired
    private PraiseService praiseService;

    @RequestMapping(method = RequestMethod.POST, value = "/register")
    public String register(Model model, User user, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User name = userService.findName(user.getUsername());
        User phone = userService.findPhone(Md5Util.md5(user.getPhone()));
        if (name != null){
            request.setAttribute("message1", "用户名已存在，不能重复注册");
            request.getRequestDispatcher("/register.jsp").forward(request,response);
        } else if (phone != null){
            request.setAttribute("message2", "手机号已存在，不能重复注册");
            request.getRequestDispatcher("/register.jsp").forward(request,response);
        }
        else {
            System.out.println(user.getPhone());
//            System.out.println(new String(user.getPhone()));
            byte[] encrypt = DESTest.encrypt(new String(user.getRealname()), Md5Util.md5(user.getUsername()));
            user.setRealname(encrypt);
            user.setRealid(Md5Util.md5(user.getRealid()));
            user.setPhone(Md5Util.md5(user.getPhone()));
            user.setPassword(Md5Util.md5(user.getPassword()));
            userService.saveOrUpdate(user);
        }
        return "redirect:/jsp/success.jsp";
    }

    @RequestMapping(method = RequestMethod.POST, value = "/login")
    @ResponseBody
    public Response login(String username, String password, Model model, HttpSession session){
        User user = userService.findVerify(username, password);
        System.out.println(user);
        if (user != null){
            session.setAttribute("user",username);
            session.setAttribute("type", user.getType());
            model.addAttribute("username",username);
            List<Content> all = contentService.findAllSort();
            model.addAttribute("contentList", all);
            return new SuccessResponse();
        }
//        return "redirect:/jsp/success.jsp";
        return new FailedResponse();
    }

    @RequestMapping(method = RequestMethod.POST, value = "/find")
    public String findPass(Model model, User user){
        User name = userService.findName(user.getUsername());
        System.out.println(name);
        if (name != null){
            System.out.println("=====================");
            String decrypt = DESTest.decrypt(name.getRealname(), Md5Util.md5(user.getUsername()));
            System.out.println(decrypt);
            System.out.println(new String(user.getRealname()));
            System.out.println(name.getRealid() + " ---- " + Md5Util.md5(user.getRealid()));
            System.out.println(name.getPhone() + " ---- " + Md5Util.md5(user.getPhone()));
            if (decrypt.equals(new String(user.getRealname()))&& name.getRealid().equals(Md5Util.md5(user.getRealid()))&& name.getPhone().equals(Md5Util.md5(user.getPhone()))){
                System.out.println("hear");
                name.setPassword(Md5Util.md5(user.getPassword()));
                userService.saveOrUpdate(name);
                return "/login.jsp";
            }
        }
        return "/register.jsp";
    }

    @RequestMapping(method = {RequestMethod.GET}, value = "/index")
    public String index(Model model){
        List<Content> all = contentService.findAllSort();
        model.addAttribute("contentList",all);
        return "/index.jsp";
    }

    @RequestMapping(method = {RequestMethod.POST, RequestMethod.GET}, value = "/my/{username}")
    public String myAffiche(@PathVariable String username, Model model){
        User user = userService.findName(username);
        List<Content> contents = new ArrayList<Content>();
        if (user != null){
            contents = contentService.findByUser(user);
        }
        model.addAttribute("contentList", contents);
        return "/index.jsp";
    }
}
