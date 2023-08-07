package sample.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.ToString;

@Getter
@AllArgsConstructor
@ToString
@Builder
public class MoneyDto {
	private int custno;
	private String custname;
	private String grade;
	private int total;
	

}
