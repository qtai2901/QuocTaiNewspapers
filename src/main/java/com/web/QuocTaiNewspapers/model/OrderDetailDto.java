package com.web.QuocTaiNewspapers.model;

import java.io.Serializable;

import com.web.QuocTaiNewspapers.entity.Order;
import com.web.QuocTaiNewspapers.entity.Product;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class OrderDetailDto implements Serializable {
    private static final long serialVersionUID = 1L;
    private Long orderDetailId;
    private Order order;
    private Product product;
    private Integer price;
    private Integer discount;
    private String status;
    private Integer quantity;
    private String discription;
    private Boolean isEdit;
}
