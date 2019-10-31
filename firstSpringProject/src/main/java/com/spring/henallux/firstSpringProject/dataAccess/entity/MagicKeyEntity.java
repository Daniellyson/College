package com.spring.henallux.firstSpringProject.dataAccess.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "magic_key")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class MagicKeyEntity {

    @Id
    @Column
    private String magicValue;
}
