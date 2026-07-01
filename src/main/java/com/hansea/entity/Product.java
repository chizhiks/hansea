package com.hansea.entity;

import jakarta.persistence.*;
import lombok.*;

import java.util.List;

@Entity
@Table(name = "products")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String name;

    @Column(nullable = false)
    private String description;

    @Column(nullable = false)
    private Long price;

    @Column(nullable = false)
    private Integer stockQuantity;

    @OneToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL, mappedBy = "product")
    private List<ProductImage> images;

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "product")
    private List<OrderItem> items;

    @ManyToMany(fetch = FetchType.LAZY, mappedBy = "products")
    private List<Category> categories;

    @ManyToOne
    @JoinColumn(name = "seller_id", nullable = false)
    private User seller;
}
