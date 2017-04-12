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
public class CarOptionAction implements IAction
{
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	public Map<String, Object> doAction(String actionId, Map<String, Object> params)
	{
		Map<String, Object> rs = null;
		List rows;
		
		try
		{
			//System.out.println("params=" + params);
			
		    rows = SqlSessionManager.getSqlMapClient().queryForList("HKMC.carOption",params);
			if ( rows.size() > 0 ) {
				rs = (Map<String, Object>)rows.get(0);
			}
			
		}catch(Exception ex) {
			ex.printStackTrace();
		}
		
		return rs;
	}
}
