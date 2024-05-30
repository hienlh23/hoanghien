package com.anhngo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.anhngo.dao.ThuCungDAO;
import com.anhngo.entity.ThuCungEntity;

@Controller
public class AdminController_PETS {
	@Autowired
	private ThuCungDAO thucungDAO;

	@RequestMapping({ "/admin/pets/index", "/admin/pets/edit/{id}" })
	public String admin(Model model, @PathVariable(required = false) Integer id) {
		ThuCungEntity item;
		if (id != null) {
			item = thucungDAO.findById(id).orElse(new ThuCungEntity());
		} else {
			item = new ThuCungEntity();
		}
		model.addAttribute("item", item);

		System.out.println(id);
		List<ThuCungEntity> items = thucungDAO.findAll();
		model.addAttribute("items", items);
		return "/admin/pets/index";
	}

	@RequestMapping("/admin/pets/save")
	public String save(ThuCungEntity item) {
		thucungDAO.save(item);
		return "redirect:/admin/pets/index";
	}

	@RequestMapping("/admin/pets/update")
	public String update(ThuCungEntity item) {
		thucungDAO.save(item);
		return "redirect:/admin/pets/edit/" + item.getMaThuCung();
	}

	@RequestMapping("/admin/pets/delete/{id}")
	public String delete(@PathVariable Integer id) {
		thucungDAO.deleteById(id);
		return "redirect:/admin/pets/index";
	}
}
