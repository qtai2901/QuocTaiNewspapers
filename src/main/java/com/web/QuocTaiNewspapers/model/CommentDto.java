package com.web.QuocTaiNewspapers.model;

import java.io.Serializable;

import com.web.QuocTaiNewspapers.entity.Account;
import com.web.QuocTaiNewspapers.entity.Product;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CommentDto implements Serializable {
	private static final long serialVersionUID = 1L;
	private Long commentId;
	private Account account;
	private Product product;
	private String description;
	private Boolean isEdit;

}
