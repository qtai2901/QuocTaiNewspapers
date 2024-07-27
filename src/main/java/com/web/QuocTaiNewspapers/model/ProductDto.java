package com.web.QuocTaiNewspapers.model;

import java.io.Serializable;

import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ProductDto implements Serializable {
	private static final long serialVersionUID = 1L;
	private Long productId;
	private String name;
	private int quantity;
	private int unitPrice;
	private int oldPrice;
	private int discount;
	private MultipartFile image1File;
	private String image1;
	private String image5;
	private MultipartFile image5File;
	private String Discription;
	private String enteredDay;
	private Boolean isEdit;
	private Long categoryId;
	private String hotSale;

}
