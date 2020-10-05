package com.trung.forms;

import javax.servlet.http.HttpServletRequest;

public class ConnectionForm {
	private String result;
	
	public void verifyId(HttpServletRequest request) {
		String login = request.getParameter("login");
		String password = request.getParameter("password");
		
		if (password.equals(login+"123")) {
			result = "Vous êtes bien connecté";
		}
		else {
			result = "Vous êtes pas authentifié";
		}
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}
	
	

}
