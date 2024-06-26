package com.anhngo.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.anhngo.entity.DonHangEntity;

public interface DonHangDAO extends JpaRepository<DonHangEntity, Integer> {
	String donHangAdmin = "SELECT \r\n" + "    dh.ma_donhang,\r\n" + "    kh.ten_khachhang,\r\n"
			+ "    nv.ten_nhanvien,\r\n" + "    dh.ngay_dat,\r\n" + "    tc.ten_thucung,\r\n" + "    ct.soluong,\r\n"
			+ "    ct.gia,\r\n" + "    (ct.gia * ct.soluong) AS thanh_tien,\r\n" + "	ct.trangthai\r\n" + "FROM \r\n"
			+ "    donhang dh,\r\n" + "    khachhang kh,\r\n" + "    nhanvien nv,\r\n" + "    chitiet_donhang ct,\r\n"
			+ "    thucung tc\r\n" + "WHERE\r\n" + "    dh.ma_khachhang = kh.ma_khachhang\r\n"
			+ "    AND dh.ma_nhanvien = nv.ma_nhanvien\r\n" + "    AND dh.ma_donhang = ct.ma_donhang\r\n"
			+ "    AND ct.ma_thucung = tc.ma_thucung;\r\n" + "";

	@Query(value = donHangAdmin, nativeQuery = true)
	List<Object[]> findAllOrdersInfo();
}
