package com.spring.henallux.firstSpringProject.dataAccess.util;

import com.spring.henallux.firstSpringProject.dataAccess.entity.MagicKeyEntity;
import com.spring.henallux.firstSpringProject.model.MagicKeyForm;
import org.springframework.stereotype.Component;

@Component
public class MagicKeyConverter {

    public MagicKeyEntity magicKeyModelToMagicKeyEntity(MagicKeyForm magicKeyForm) {
        MagicKeyEntity magicKeyEntity = new MagicKeyEntity();

        magicKeyEntity.setMagicValue(magicKeyForm.getMagicKey());

        return magicKeyEntity;
    }

    public MagicKeyForm magicKeyEntityToMagicKeyModel(MagicKeyEntity magicKeyEntity) {
        MagicKeyForm magicKeyForm = new MagicKeyForm();

        magicKeyForm.setMagicKey(magicKeyEntity.getMagicValue());

        return  magicKeyForm;
    }
}
