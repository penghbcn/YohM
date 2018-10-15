package yohm.web.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import yohm.web.service.NewsService;
import yohm.web.vo.News;
import yohm.web.vo.SysResult;

/**
 * @author tarena
 */
@Controller
public class NewsController {

	@Autowired
	private NewsService newsService;
	
	@RequestMapping("index")
	public String getIndex() {
		return "index";
	}
	
	@RequestMapping("{channel}")
	public String getAnotherIndex(@PathVariable("channel") String channel,Model model) {
		model.addAttribute("href", channel);
		return "index";
	}

	@RequestMapping("news/getNews")
	@ResponseBody
	public SysResult getNewsList(HttpServletRequest request) {
		String channel = request.getParameter("channel");
		Integer refreshId = Integer.parseInt(request.getParameter("refreshId"));
		System.out.println(channel);
		List<News> list = newsService.getNewsList(channel, refreshId);
		return SysResult.ok(list);
	}

	@RequestMapping("news/{newsId}")
	public String getNewsDetails(@PathVariable("newsId") String newsId,Model model) {
		System.out.println(newsId);
		if(newsId.length()!=32) {
			return "wrongpage";
		}
		List<String> details = new ArrayList<>();
		for(int i=0;i<10;i++) {
			details.add("这是第"+i+"段~~~");
		}
		List<String> keys = new ArrayList<>();
		for(int i=0;i<5;i++) {
			keys.add("关键字"+i);
		}
		News news = new News();
		news.setTitle("新闻标题");
		news.setUrl("新闻原链接");
		news.setSource("新闻来源");
		news.setPDate("新闻发布时间");
		news.setKeywords(keys);
		news.setChannel("新闻所属类别");
		news.setDetails(details);
		model.addAttribute("news", news);
		//評論區要實現自動刷新功能
		return "news";
	}
}
