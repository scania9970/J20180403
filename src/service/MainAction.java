package service;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.TourRankDao;
import dao.TourRankDto;
import dao.WishlistDto;

public class MainAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			TourRankDao dao = TourRankDao.getInstance();
			List<TourRankDto> listPlan = dao.selectRankList();
			List<WishlistDto> listWish = dao.selectWishList();
			
			request.setAttribute("listPlan", listPlan);
			request.setAttribute("listWish", listWish);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		return "main.jsp";
	}

}
