package com.payment;

public class paymentview {
	private String userId;
	private String email;
	private String packtype;
	
	private String cardno;
	private String cvc;
	private String paymethod;
	
	public paymentview(String userId, String email, String packtype, String cardno, String cvc,String paymethod) {
			
		this.userId = userId;
		this.email = email;
		this.packtype = packtype;
		
		this.cardno = cardno;
		this.cvc = cvc;
		this.paymethod = paymethod;
	}

	public String getUserId() {
		return userId;
	}

	public String getEmail() {
		return email;
	}

	public String getPacktype() {
		return packtype;
	}

	public String getCardno() {
		return cardno;
	}

	public String getCvc() {
		return cvc;
	}

	public String getPaymethod() {
		return paymethod;
	}


	
	
}
