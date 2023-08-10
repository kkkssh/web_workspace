package sample.dto;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
@Builder
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
//DTO : JBuy , JProduct
public class JCustomer {	
	private String custom_id;
	private String name;
	private String email;
	private int age;
	private Date regDate;
	private String password;

}