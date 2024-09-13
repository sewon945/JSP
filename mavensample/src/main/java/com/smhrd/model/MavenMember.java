package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

// window -> show view -> Outline
// => 필요한 거 @ 붙여서 만들어주기 
@AllArgsConstructor // 전체 파라미터 전부 들어가는 생성자
@Getter // get
@Setter  // set
@NoArgsConstructor  // 기본생성자
@Data // => get, set, equals, hashcode, toString
public class MavenMember {
	
	private String id;
	private String pw;
	private String nickname;
	
	// Login 생성자
	public MavenMember(String id, String pw) {
		super();
		this.id = id;
		this.pw = pw;
		
	}
	
	
	
	// alt + shift + s => 생성자(Field(필수), Getter(필수), Setter)
	
	// Join 생성자
//	public MavenMember(String id, String pw, String nickname) {
//		super();
//		this.id = id;
//		this.pw = pw;
//		this.nickname = nickname;
//	}
	
	
	// Join 게터
//	public String getId() {
//		return id;
//	}
//	public String getPw() {
//		return pw;
//	}
//	public String getNickname() {
//		return nickname;
//	}
	
	
	
}
