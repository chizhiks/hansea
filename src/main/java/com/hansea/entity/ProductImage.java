package com.hansea.entity;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "products_images")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class ProductImage {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String link;

    @ManyToOne
    @JoinColumn(name = "product_id", nullable = false)
    private Product product;
}
