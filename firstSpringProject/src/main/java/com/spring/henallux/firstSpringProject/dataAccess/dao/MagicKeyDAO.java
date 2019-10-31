package com.spring.henallux.firstSpringProject.dataAccess.dao;

import com.spring.henallux.firstSpringProject.dataAccess.MagicKeyDataAccess;
import com.spring.henallux.firstSpringProject.dataAccess.entity.MagicKeyEntity;
import com.spring.henallux.firstSpringProject.dataAccess.repository.MagicKeyRepository;
import com.spring.henallux.firstSpringProject.dataAccess.util.MagicKeyConverter;
import com.spring.henallux.firstSpringProject.model.MagicKeyForm;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.List;

@Service
public class MagicKeyDAO implements MagicKeyDataAccess {

    private MagicKeyRepository magicKeyRepository;
    private MagicKeyConverter magicKeyConverter;

    @Autowired
    public MagicKeyDAO(MagicKeyRepository magicKeyRepository, MagicKeyConverter magicKeyConverter) {
        this.magicKeyRepository = magicKeyRepository;
        this.magicKeyConverter = magicKeyConverter;
    }

    @Override
    @Transactional
    public ArrayList<MagicKeyForm> getMagicKey() {

        List<MagicKeyEntity> magicKeyEntities = magicKeyRepository.findAll();

        ArrayList<MagicKeyForm> keys = new ArrayList<>();

        for (MagicKeyEntity keyEntity : magicKeyEntities) {
            MagicKeyForm magicKeyForm = magicKeyConverter.magicKeyEntityToMagicKeyModel(keyEntity);
            keys.add(magicKeyForm);
        }
        return keys;
    }
}
