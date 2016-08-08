package com.kosign.wecafe.controller.admin;

import java.math.BigDecimal;
import java.text.ParseException;
import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.kosign.wecafe.services.ExchangeService;

@Controller
public class ExchangeRateController {
	@Inject
	private ExchangeService exchangeService;

	
	@RequestMapping(value="/seller/getchangerate", method=RequestMethod.GET)
	public ResponseEntity<Map<String, Object>> listExchange(){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("data", exchangeService.getExchangerate());
		return new ResponseEntity<Map<String, Object>>(map, HttpStatus.OK);
	}
	

	@RequestMapping(value="/admin/exchangeupdate", method=RequestMethod.GET)
	public ResponseEntity<Map<String, Object>> setExchangerate(@RequestParam(value="rate") String strRate) throws ParseException{
		int rate = Integer.parseInt(strRate);
		Map<String, Object> map = new HashMap<String, Object>();
		
		try{			
			System.out.println("test :" + exchangeService.setExchangerate(rate));
			map.put("updateRate", true);
			return new ResponseEntity<Map<String, Object>>(map, HttpStatus.OK);
			
		}catch(Exception e){
			System.out.println("You failed to update rate.");
			e.printStackTrace();
		}
		 return null;
	}
	

	@RequestMapping(value="/admin/costmoneyupdate", method=RequestMethod.GET)
	public ResponseEntity<Map<String, Object>> setCostMoney(@RequestParam(value="money") String strMoney,@RequestParam(value="urmoney") BigDecimal strUrMoney) 
			throws ParseException{
		int money = Integer.parseInt(strMoney);
		BigDecimal urMoney= (strUrMoney);
		Map<String, Object> map = new HashMap<String, Object>();
		
		try{			
			System.out.println("test :" + exchangeService.setCostMoney(money, urMoney));
			map.put("updateMoney", true);
			return new ResponseEntity<Map<String, Object>>(map, HttpStatus.OK);
			
		}catch(Exception e){
			System.out.println("You failed to update Cost money.");
			e.printStackTrace();
		}
		 return null;
	}
	
	/*@RequestMapping(value="/admin/exchangeupdate1", method=RequestMethod.POST, consumes= MediaType.APPLICATION_JSON_VALUE,produces=MediaType.APPLICATION_JSON_VALUE)
	public Boolean setExchangeRate1(@RequestParam(value="rate") String strRate) throws ParseException{
		try {
			int rate = Integer.parseInt(strRate);
			System.out.println("test :" + exchangeService.setExchangerate(rate));
			return true;
		} catch (Exception e) {
			System.out.println("You failed to update rate.");
			e.printStackTrace();
		}
		return false;
	}*/

}
