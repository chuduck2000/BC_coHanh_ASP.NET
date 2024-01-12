CREATE DATABASE WEBBANSACH;
go;
Use WEBBANSACH;
go;


 -- Create NhaXuatBan table
CREATE TABLE NhaXuatBan (
    MaNXB VARCHAR(5) PRIMARY KEY,
    TenNXB NVARCHAR(50),
    SdtNXB NVARCHAR(11)
);

-- Create LoaiSach table
CREATE TABLE LoaiSach (
    MaLoai VARCHAR(5) PRIMARY KEY,
    TenLoai NVARCHAR(50)
);

-- Create Sach table
CREATE TABLE Sach (
    MaSach INT IDENTITY(1,1) PRIMARY KEY,
    NhanDe NVARCHAR(100),
    TacGia NVARCHAR(100),
    TomTat NVARCHAR(255),
    SoTrang INT,
    SoLuong INT,
    Gia DECIMAL(10, 2),
    MaLoai VARCHAR(5) FOREIGN KEY REFERENCES LoaiSach(MaLoai),
    MaNXB VARCHAR(5) FOREIGN KEY REFERENCES NhaXuatBan(MaNXB)
);

-- Create NhanVien table
CREATE TABLE NhanVien (
    MaNV INT IDENTITY(1,1) PRIMARY KEY,
    TenNV NVARCHAR(50),
    NgaySinhNV DATE,
    SdtNV NVARCHAR(11),
    DiaChiNV NVARCHAR(150),
	TrangThai INT
);

-- Create KhachHang table
CREATE TABLE KhachHang (
    MaKH INT IDENTITY(1,1) PRIMARY KEY,
    TenKH NVARCHAR(50),
    NgaySinhKH DATE,
    SdtKH NVARCHAR(11),
    DiaChiKH NVARCHAR(150),
	TrangThai INT
);

-- Create CTGioHang table
CREATE TABLE CTGioHang (
    MaKH INT FOREIGN KEY REFERENCES KhachHang(MaKH),
    MaSach INT FOREIGN KEY REFERENCES Sach(MaSach),
    SoLuong INT,
    PRIMARY KEY (MaKH, MaSach)
);

-- Create DonHang table
CREATE TABLE DonHang (
    MaDon INT IDENTITY(1,1) PRIMARY KEY,
    MaKH INT FOREIGN KEY REFERENCES KhachHang(MaKH),
    MaNV INT FOREIGN KEY REFERENCES NhanVien(MaNV),
    NgayDat DATE,
    TenNguoiNhan NVARCHAR(50),
    DiaChiNguoiNhan NVARCHAR(150),
    SdtNguoiNhan NVARCHAR(11),
	TrangThai INT
);

-- Create CTDonHang table
CREATE TABLE CTDonHang (
    MaDon INT FOREIGN KEY REFERENCES DonHang(MaDon),
    MaSach INT FOREIGN KEY REFERENCES Sach(MaSach),
    SoLuong INT,
    GiaBan DECIMAL(10, 2),

    PRIMARY KEY (MaDon, MaSach)
);
