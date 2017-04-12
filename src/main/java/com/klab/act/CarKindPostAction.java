package com.klab.act;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.klab.ibatis.SqlSessionManager;
import com.klab.svc.IAction;

/**
 * @author 최의신 (choies@kr.ibm.com)
 *
 */
public class CarKindPostAction implements IAction
{
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	public Map<String, Object> doAction(String actionId, Map<String, Object> params)
	{
		Map<String, Object> rs = new HashMap<String, Object>();
		List rows;
		
		try
		{
			rs.put("url", "/img/car.jpg");
			rs.put("carkind", params.get("carkind"));
			
		}catch(Exception ex) {
			ex.printStackTrace();
		}
		
		return rs;
	}
}
