package dashboard;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.JsonObject;
import com.klab.ibatis.SqlSessionManager;
import com.klab.svc.IAction;

import twitter4j.JSONArray;
import twitter4j.JSONObject;


@WebServlet("/FailureList")
public class FailureList extends HttpServlet
{
	/**
	 * @author 김희은 (khe930@kr.ibm.com)
	 *
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		JSONObject result = new JSONObject();
		//JsonObject result = new JsonObject();
		try
		{			
			Map<String, Object> resText = null;
			//Dataset ds = new Dataset();
			List<Dataset> list = SqlSessionManager.getSqlMapClient().queryForList("HKMCDash.failureList"); //Real-time call total
			//if ( list.size() > 0 ){
			//	for(int i=0;i<list.size();i++){
			//		ds = list.get(i);		
			//		result.addProperty("LogSeq", ds.getLogSeq());
			//		result.addProperty("LogDate", ds.getLogDate());
			//		result.addProperty("UserCd", ds.getUserCd());
			//		result.addProperty("WatsonPassYn", ds.getWatsonPassYn());
			//		result.addProperty("WatsonRetrainYn", ds.getWatsonRetrainYn());
			//	}
			//}
			JSONArray jArray = new JSONArray();
		    for (Dataset ds : list)
		    {
		         JSONObject dsJSON = new JSONObject();
		         dsJSON.put("LogSeq", ds.getLogSeq()); 
		         dsJSON.put("LogDate", ds.getLogDate());                 
		         dsJSON.put("UserCd", ds.getUserCd());                   
		         dsJSON.put("WatsonPassYn", ds.getWatsonPassYn());       
		         dsJSON.put("WatsonRetrainYn", ds.getWatsonRetrainYn()); 
		         jArray.put(dsJSON);
		    }
		    result.put("results", jArray);

		}catch(Exception ex) {
			ex.printStackTrace();
			//result.addProperty("returnCode", "FAIL");
			//result.addProperty("results", ex.getMessage());
		}
		response.setContentType("text/plain; charset=utf-8");
		response.getWriter().print(result.toString());
	}
}
