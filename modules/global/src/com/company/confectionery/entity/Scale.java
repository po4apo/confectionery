package com.company.confectionery.entity;

import com.haulmont.chile.core.datatypes.impl.EnumClass;

import javax.annotation.Nullable;


public enum Scale implements EnumClass<String> {

    Г("г"),
    ШТ("шт"),
    МЛ("мл");

    private String id;

    Scale(String value) {
        this.id = value;
    }

    public String getId() {
        return id;
    }

    @Nullable
    public static Scale fromId(String id) {
        for (Scale at : Scale.values()) {
            if (at.getId().equals(id)) {
                return at;
            }
        }
        return null;
    }
}