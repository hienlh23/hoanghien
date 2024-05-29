package com.anhngo.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.Data;

@Entity
@Data
@Table(name = "donhang")
public class DonHangEntity implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ma_donhang")
	private int maDonHang;

	@ManyToOne
	@JoinColumn(name = "ma_khachhang")
	private KhachHangEntity khachHang;

	@ManyToOne
	@JoinColumn(name = "ma_nhanvien")
	private NhanVienEntity nhanVien;

	@Column(name = "ngay_dat")
	private Date ngayDat;

	@OneToMany(mappedBy = "donHang")
	private List<ChiTietDonHangEntity> chiTietDonHang;
}
