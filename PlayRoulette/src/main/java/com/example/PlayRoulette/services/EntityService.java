package com.example.PlayRoulette.services;

import java.io.Serializable;

public interface EntityService<T,ID extends Serializable>{
    void saveOrUpdate(T entity);
}
