package com.zking.ssm.controller;

import com.zking.ssm.model.User;
import com.zking.ssm.service.IUserService;
import com.zking.ssm.util.PasswordHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/handleUser")
public class UserController {
    @Autowired
    private IUserService userService;
    @RequestMapping("/goDel")
    public String godel(){
        return  "delete";
    }
    @RequestMapping("/upd")
    public String upd(){
        return  "update";
    }

    @RequestMapping("/add")
    public  String  save(User u){
        String salt = PasswordHelper.createSalt();
        String s = PasswordHelper.createCredentials(u.getPassword(), salt);
        u.setPassword(s);
        u.setSalt(salt);
        int n =userService.insert(u);
        if (n>0){
            return "success";
        }else {
            return "failed";
        }
    }
    @RequestMapping("/detele")
    @ResponseBody
    public Map<String,Object> delete(Integer uid){
        int n = userService.deleteByPrimaryKey(uid);
        String msg="删除成功";
        if (n<=0){
            msg="删除失败";
        }
        Map<String,Object> map=new HashMap<>();
        map.put("code",n);
        map.put("msg",msg);
        return  map;

    }
    @RequestMapping("/update")
    public  String  update(User u,Integer uid){
        String salt = PasswordHelper.createSalt();
        String s = PasswordHelper.createCredentials(u.getPassword(), salt);
        u.setUserid(uid);
        u.setPassword(s);
        u.setSalt(salt);
        int n =userService.updateByPrimaryKey(u);
        if (n>0){
            return "shanchu";
        }else {
            return "failed";
        }
    }
}
