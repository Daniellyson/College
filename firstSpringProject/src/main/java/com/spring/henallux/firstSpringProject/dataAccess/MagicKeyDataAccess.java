package com.spring.henallux.firstSpringProject.dataAccess;

import com.spring.henallux.firstSpringProject.model.MagicKeyForm;

public interface MagicKeyDataAccess {

    MagicKeyForm getMagicKey(String key);
}
