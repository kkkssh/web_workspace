package sample.dto;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class OrderDto {
   private String email;
   private String pcode;
   private int quantity;
   private Date orderdate;
}


/*
 * 테이블 만들기 
 * CREATE TABLE orders( 
 * 		email varchar2(30), 
 * 		pcode varchar2(20) NOT NULL,
 * 		quantity NUMBER(3) NOT NULL, 
 * 		orderdate DATE DEFAULT sysdate );
 */

