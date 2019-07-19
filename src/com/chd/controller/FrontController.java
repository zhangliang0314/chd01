package com.chd.controller;

import com.chd.model.Category;
import com.chd.model.Product;
import com.chd.model.User;
import com.chd.service.CategoryService;
import com.chd.service.ProductService;
import com.chd.service.UserService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


/**
 * @Auther:zhangliang
 * @Date:2019/7/16
 * @Description:com.chd.controller
 * @version:1.0
 */
@Controller
public class FrontController {
    private  static Logger logger = Logger.getLogger(FrontController.class);

    @Autowired
    private UserService userService;

    @Autowired
    private CategoryService categoryService;

    @Autowired
    private ProductService productService;
    @RequestMapping("index.do")
    public String index(Model model) {
        List<Category> categories = categoryService.selCategories();
        for (Category category : categories) {
            List<Product> products =  productService.selProducts(category.getId());
            category.setProducts(products);
        }
        model.addAttribute("categories",categories);
        return "frontpage/index";
    }
    @RequestMapping("register.do")
    public String register() {

        return "frontpage/register";
    }
    @RequestMapping("self_info.do")
    public String self_info() {

        return "frontpage/self_info";
    }

    @RequestMapping("shopcar.do")
    public String shopcar() {

        return "frontpage/shopcar";
    }
    /*
    实现自动登录功能
     */
    @RequestMapping("login.do")
    public String login(HttpServletRequest request) {
        User user = (User) request.getSession().getAttribute("user");
        if (null != user){
            //用户已登录
            return "frontpage/index";
        }
        return "frontpage/login";
    }

    /*
    注册功能
     */
    @RequestMapping(value = "registerUser.do", method = RequestMethod.POST)
    public String registerUser(User user, Model model) {
        logger.info(user.getUsername());
        if (!userService.isExist(user.getUsername())) {
            //用户名尚未被注册，进行新增操作
            userService.insUser(user);
            model.addAttribute("msg", "注册成功");
            return "frontpage/login";
        } else {
            //用户名已经被注册
            model.addAttribute("msg", "用户名已被注册！请重新注册。");
        }
        return "frontpage/register";
    }

    //登录
    @RequestMapping("checkLogin.do")
    public String checkLogin(String username, String password, String code, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        logger.info("username:" + username);
        logger.info("password:" + password);
        logger.info("code:" + code);

        if (!code.equals("rmcc")){
            //验证码是固定的，之后可以动态生成
            request.setAttribute("msg","验证码错误");
            return "frontpage/login";
        }else if (userService.isExist(username)) {

            //存在该用户名，进行下一步判断
            logger.info("存在该用户");
            if (userService.checkUser(username, password)) {
                //用户名和密码都正确，登录成功
                User user = userService.selUserByUsername(username);
                request.getSession().setAttribute("user", user);
                return "frontpage/index";
            } else {
                request.setAttribute("msg","用户名或密码不正确");
            }
        } else {
            //用户名不存在
            request.setAttribute("msg","用户名不存在");
        }
        return "frontpage/login";
    }

    //退出登录
    @RequestMapping("logout.do")
    public String logout(HttpServletRequest request) {
        //将登陆的用户从session中remove
        request.getSession().removeAttribute("user");
        return "redirect:index.do";
    }

    //显示个人信息
    @RequestMapping("selInfo.do")
    public String selInfo(int id,Model model) {
        logger.info(id);
        User u = userService.selUserById(id);
        model.addAttribute("user",u);
        return "frontpage/self_info";
    }


    //修改个人信息
    @RequestMapping("updInfo.do")
    public String updInfo(User user,
                          Model model) {
        logger.info(user.getId());
        logger.info(user.getUsername());
        userService.updUser(user);
        User u = userService.selUserById(user.getId());
        model.addAttribute("user",u);
        model.addAttribute("msg","您的信息已经修改成功");
        return "frontpage/self_info";
    }

}
