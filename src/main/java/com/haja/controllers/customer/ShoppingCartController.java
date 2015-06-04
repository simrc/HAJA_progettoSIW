package com.haja.controllers.customer;

import com.haja.models.Order;
import com.haja.models.OrderRepository;
import com.haja.models.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * Created by alessio on 04/06/15.
 * Project: HAJA_progettoSIW
 * Package: com.haja.controllers.customer
 */

@Controller
@RequestMapping(value = "/cart")
//@SessionAttributes({"order"})
public class ShoppingCartController {

    @Autowired
    private OrderRepository orderRepository;


    /*
    @RequestMapping(value = "/add2Session", method = RequestMethod.GET)
    public String add2Session(HttpServletRequest request){
        Order order = (Order)request.getSession().setAttribute("order", );
        return "redirect:/order";
    }
    */
}
