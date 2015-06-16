package com.haja.controllers.administrator;

import com.haja.models.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import java.util.Date;
import java.util.List;




/**
 * Created by alessio on 22/05/15.
 * Project: HAJA_progettoSIW
 * Package: com.haja.controllers.administrator
 */

@Controller
@RequestMapping(value = "/admin/order")

public class OrderController {

        @Autowired
        private OrderRepository orderRepository;

        @Autowired
        private ProductRepository productRepository;

         @RequestMapping(method = RequestMethod.POST)
         public String addOrder(@ModelAttribute("order") Order order, BindingResult result) {
           orderRepository.save(order);
         return "redirect:/administrator/order";
         }

        @RequestMapping(method = RequestMethod.GET)
        public String addOrder (ModelMap model) {
            model.addAttribute("order", new Order());
            model.addAttribute("orders", orderRepository.findAll());
            return "administrator/order";
        }



        @RequestMapping("/delete/{orderId}")
        public String deleteOrder(@PathVariable("orderId") Long orderId) {
            orderRepository.delete(orderRepository.findOne(orderId));
            return "redirect:/administrator/order";
        }



        @RequestMapping(value = "/details/{id}", method = RequestMethod.GET)
        public String detail(@PathVariable("id") long id, ModelMap model) {
            Order o = orderRepository.findOne(id);
            model.addAttribute("order", o);
            Double total = 0.0;
            for (OrderLine orderLine : o.getOrderLines()) {
                total += orderLine.getPrice();
            }
            model.addAttribute("total", total);
            return "administrator/orderDetails";
        }

        @RequestMapping("/evadi/{orderId}")
        public String evadeOrder(@PathVariable("orderId") Long orderId) {
         Order o = orderRepository.findOne(orderId);
         o.setEvasionDate(new Date());
         List<OrderLine> orderLines = o.getOrderLines();
         for(OrderLine orderLine : orderLines) {
            Product p = productRepository.findOne(orderLine.getProduct().getId());
            p.subQuantity(orderLine.getQuantity());
            productRepository.save(p);
         }
         orderRepository.save(o);
         return "redirect:/administrator/order";
    }

    }


