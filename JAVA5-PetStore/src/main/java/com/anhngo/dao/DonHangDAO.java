package com.anhngo.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.anhngo.entity.DonHangEntity;

public interface DonHangDAO extends JpaRepository<DonHangEntity, Integer> {

}
