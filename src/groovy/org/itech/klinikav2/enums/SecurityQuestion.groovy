package org.itech.klinikav2.enums

enum SecurityQuestion {
	Q1('First question'), Q2('Second question'), Q3('Third question'),Q4('Fourth question'),Q5('Fifth question')
	
	final String question;
	
	public SecurityQuestion(String question){
		this.question = question
	}
	
	String question(){
		return question
	}
	
	String toString(){
		question
	}

}
