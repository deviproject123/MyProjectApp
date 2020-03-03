package in.nit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import in.nit.model.OrderMethod;
import in.nit.model.ShipmentType;

@Controller
@RequestMapping("/order")
public class OrderMethodController {
		/*@Autowired
		private IShipmentTypeService service;
*/
		
	@RequestMapping("/register")
	public String showRegPage(Model model) {
		model.addAttribute("orderMethod", new OrderMethod());
		return "OrderMethodRegister";
	}

}
