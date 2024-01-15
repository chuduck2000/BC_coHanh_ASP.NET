/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     1/15/2024 2:26:20 PM                         */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CHITIETDONHANG') and o.name = 'FK_CHITIETD_CHITIETDO_SACH')
alter table CHITIETDONHANG
   drop constraint FK_CHITIETD_CHITIETDO_SACH
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CHITIETDONHANG') and o.name = 'FK_CHITIETD_CHITIETDO_DONHANG')
alter table CHITIETDONHANG
   drop constraint FK_CHITIETD_CHITIETDO_DONHANG
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CHITIETGIOHANG') and o.name = 'FK_CHITIETG_CHITIETGI_KHACHHAN')
alter table CHITIETGIOHANG
   drop constraint FK_CHITIETG_CHITIETGI_KHACHHAN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CHITIETGIOHANG') and o.name = 'FK_CHITIETG_CHITIETGI_SACH')
alter table CHITIETGIOHANG
   drop constraint FK_CHITIETG_CHITIETGI_SACH
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DONHANG') and o.name = 'FK_DONHANG_DUYET_NHANVIEN')
alter table DONHANG
   drop constraint FK_DONHANG_DUYET_NHANVIEN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DONHANG') and o.name = 'FK_DONHANG_MUA_KHACHHAN')
alter table DONHANG
   drop constraint FK_DONHANG_MUA_KHACHHAN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('KHACHHANG') and o.name = 'FK_KHACHHAN_CO_TAIKHOAN')
alter table KHACHHANG
   drop constraint FK_KHACHHAN_CO_TAIKHOAN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('NHANVIEN') and o.name = 'FK_NHANVIEN_CUA2_TAIKHOAN')
alter table NHANVIEN
   drop constraint FK_NHANVIEN_CUA2_TAIKHOAN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SACH') and o.name = 'FK_SACH_THUOC_LOAISACH')
alter table SACH
   drop constraint FK_SACH_THUOC_LOAISACH
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SACH') and o.name = 'FK_SACH_XUAT_BAN_NHAXUATB')
alter table SACH
   drop constraint FK_SACH_XUAT_BAN_NHAXUATB
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TAIKHOAN') and o.name = 'FK_TAIKHOAN_CO2_KHACHHAN')
alter table TAIKHOAN
   drop constraint FK_TAIKHOAN_CO2_KHACHHAN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TAIKHOAN') and o.name = 'FK_TAIKHOAN_CUA_NHANVIEN')
alter table TAIKHOAN
   drop constraint FK_TAIKHOAN_CUA_NHANVIEN
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CHITIETDONHANG')
            and   name  = 'CHITIETDONHANG2_FK'
            and   indid > 0
            and   indid < 255)
   drop index CHITIETDONHANG.CHITIETDONHANG2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CHITIETDONHANG')
            and   name  = 'CHITIETDONHANG_FK'
            and   indid > 0
            and   indid < 255)
   drop index CHITIETDONHANG.CHITIETDONHANG_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CHITIETDONHANG')
            and   type = 'U')
   drop table CHITIETDONHANG
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CHITIETGIOHANG')
            and   name  = 'CHITIETGIOHANG2_FK'
            and   indid > 0
            and   indid < 255)
   drop index CHITIETGIOHANG.CHITIETGIOHANG2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CHITIETGIOHANG')
            and   name  = 'CHITIETGIOHANG_FK'
            and   indid > 0
            and   indid < 255)
   drop index CHITIETGIOHANG.CHITIETGIOHANG_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CHITIETGIOHANG')
            and   type = 'U')
   drop table CHITIETGIOHANG
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DONHANG')
            and   name  = 'MUA_FK'
            and   indid > 0
            and   indid < 255)
   drop index DONHANG.MUA_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DONHANG')
            and   name  = 'DUYET_FK'
            and   indid > 0
            and   indid < 255)
   drop index DONHANG.DUYET_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DONHANG')
            and   type = 'U')
   drop table DONHANG
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('KHACHHANG')
            and   name  = 'CO_FK'
            and   indid > 0
            and   indid < 255)
   drop index KHACHHANG.CO_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('KHACHHANG')
            and   type = 'U')
   drop table KHACHHANG
go

if exists (select 1
            from  sysobjects
           where  id = object_id('LOAISACH')
            and   type = 'U')
   drop table LOAISACH
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('NHANVIEN')
            and   name  = 'CUA2_FK'
            and   indid > 0
            and   indid < 255)
   drop index NHANVIEN.CUA2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('NHANVIEN')
            and   type = 'U')
   drop table NHANVIEN
go

if exists (select 1
            from  sysobjects
           where  id = object_id('NHAXUATBAN')
            and   type = 'U')
   drop table NHAXUATBAN
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SACH')
            and   name  = 'THUOC_FK'
            and   indid > 0
            and   indid < 255)
   drop index SACH.THUOC_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SACH')
            and   name  = 'XUAT_BAN_FK'
            and   indid > 0
            and   indid < 255)
   drop index SACH.XUAT_BAN_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SACH')
            and   type = 'U')
   drop table SACH
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TAIKHOAN')
            and   name  = 'CUA_FK'
            and   indid > 0
            and   indid < 255)
   drop index TAIKHOAN.CUA_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TAIKHOAN')
            and   name  = 'CO2_FK'
            and   indid > 0
            and   indid < 255)
   drop index TAIKHOAN.CO2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TAIKHOAN')
            and   type = 'U')
   drop table TAIKHOAN
go

/*==============================================================*/
/* Table: CHITIETDONHANG                                        */
/*==============================================================*/
create table CHITIETDONHANG (
   MASACH               int                  not null,
   MADON                int                  not null,
   SOLUONGBAN           int                  null,
   GIABAN               float                null,
   constraint PK_CHITIETDONHANG primary key (MASACH, MADON)
)
go

/*==============================================================*/
/* Index: CHITIETDONHANG_FK                                     */
/*==============================================================*/
create index CHITIETDONHANG_FK on CHITIETDONHANG (
MASACH ASC
)
go

/*==============================================================*/
/* Index: CHITIETDONHANG2_FK                                    */
/*==============================================================*/
create index CHITIETDONHANG2_FK on CHITIETDONHANG (
MADON ASC
)
go

/*==============================================================*/
/* Table: CHITIETGIOHANG                                        */
/*==============================================================*/
create table CHITIETGIOHANG (
   MAKH                 int                  not null,
   MASACH               int                  not null,
   SOLUONG              int                  null,
   constraint PK_CHITIETGIOHANG primary key (MAKH, MASACH)
)
go

/*==============================================================*/
/* Index: CHITIETGIOHANG_FK                                     */
/*==============================================================*/
create index CHITIETGIOHANG_FK on CHITIETGIOHANG (
MAKH ASC
)
go

/*==============================================================*/
/* Index: CHITIETGIOHANG2_FK                                    */
/*==============================================================*/
create index CHITIETGIOHANG2_FK on CHITIETGIOHANG (
MASACH ASC
)
go

/*==============================================================*/
/* Table: DONHANG                                               */
/*==============================================================*/
create table DONHANG (
   MADON                int                  not null,
   MANV                 int                  not null,
   MAKH                 int                  not null,
   NGAYDAT              datetime             null,
   TENNGUOINHAN         varchar(50)          null,
   SDTNGUOINHAN         varchar(11)          null,
   DIACHINGUOINHAN      varchar(150)         null,
   TRANGTHAIDONHANG     int                  null,
   constraint PK_DONHANG primary key nonclustered (MADON)
)
go

/*==============================================================*/
/* Index: DUYET_FK                                              */
/*==============================================================*/
create index DUYET_FK on DONHANG (
MANV ASC
)
go

/*==============================================================*/
/* Index: MUA_FK                                                */
/*==============================================================*/
create index MUA_FK on DONHANG (
MAKH ASC
)
go

/*==============================================================*/
/* Table: KHACHHANG                                             */
/*==============================================================*/
create table KHACHHANG (
   MAKH                 int                  not null,
   TENDANGNHAP          varchar(30)          not null,
   TENKH                varchar(50)          null,
   NGAYSINHKH           datetime             null,
   GIOITINHKH           varchar(5)           null,
   SDTKH                varchar(11)          null,
   DIACHIKH             varchar(150)         null,
   constraint PK_KHACHHANG primary key nonclustered (MAKH)
)
go

/*==============================================================*/
/* Index: CO_FK                                                 */
/*==============================================================*/
create index CO_FK on KHACHHANG (
TENDANGNHAP ASC
)
go

/*==============================================================*/
/* Table: LOAISACH                                              */
/*==============================================================*/
create table LOAISACH (
   MALOAI               varchar(11)          not null,
   TENLOAI              varchar(100)         null,
   constraint PK_LOAISACH primary key nonclustered (MALOAI)
)
go

/*==============================================================*/
/* Table: NHANVIEN                                              */
/*==============================================================*/
create table NHANVIEN (
   MANV                 int                  not null,
   TENDANGNHAP          varchar(30)          not null,
   TENNV                varchar(50)          null,
   NGAYSINHNV           datetime             null,
   GIOITINHNV           varchar(5)           null,
   SDTNV                varchar(11)          null,
   DIACHINV             varchar(150)         null,
   constraint PK_NHANVIEN primary key nonclustered (MANV)
)
go

/*==============================================================*/
/* Index: CUA2_FK                                               */
/*==============================================================*/
create index CUA2_FK on NHANVIEN (
TENDANGNHAP ASC
)
go

/*==============================================================*/
/* Table: NHAXUATBAN                                            */
/*==============================================================*/
create table NHAXUATBAN (
   MANXB                varchar(11)          not null,
   TENNXB               varchar(100)         null,
   SDTNXB               varchar(11)          null,
   DIACHINXB            varchar(150)         null,
   constraint PK_NHAXUATBAN primary key nonclustered (MANXB)
)
go

/*==============================================================*/
/* Table: SACH                                                  */
/*==============================================================*/
create table SACH (
   MASACH               int                  not null,
   MALOAI               varchar(11)          not null,
   MANXB                varchar(11)          not null,
   TENSACH              varchar(100)         null,
   TACGIA               varchar(100)         null,
   NOIDUNG              varchar(255)         null,
   SOTRANG              int                  null,
   SOLUONGCON           int                  null,
   GIA                  float                null,
   HINHSACH             varchar(100)         null,
   constraint PK_SACH primary key nonclustered (MASACH)
)
go

/*==============================================================*/
/* Index: XUAT_BAN_FK                                           */
/*==============================================================*/
create index XUAT_BAN_FK on SACH (
MANXB ASC
)
go

/*==============================================================*/
/* Index: THUOC_FK                                              */
/*==============================================================*/
create index THUOC_FK on SACH (
MALOAI ASC
)
go

/*==============================================================*/
/* Table: TAIKHOAN                                              */
/*==============================================================*/
create table TAIKHOAN (
   TENDANGNHAP          varchar(30)          not null,
   MAKH                 int                  null,
   MANV                 int                  null,
   MATKHAU              varchar(30)          null,
   LOAITAIKHOAN         varchar(10)          null,
   constraint PK_TAIKHOAN primary key nonclustered (TENDANGNHAP)
)
go

/*==============================================================*/
/* Index: CO2_FK                                                */
/*==============================================================*/
create index CO2_FK on TAIKHOAN (
MAKH ASC
)
go

/*==============================================================*/
/* Index: CUA_FK                                                */
/*==============================================================*/
create index CUA_FK on TAIKHOAN (
MANV ASC
)
go

alter table CHITIETDONHANG
   add constraint FK_CHITIETD_CHITIETDO_SACH foreign key (MASACH)
      references SACH (MASACH)
go

alter table CHITIETDONHANG
   add constraint FK_CHITIETD_CHITIETDO_DONHANG foreign key (MADON)
      references DONHANG (MADON)
go

alter table CHITIETGIOHANG
   add constraint FK_CHITIETG_CHITIETGI_KHACHHAN foreign key (MAKH)
      references KHACHHANG (MAKH)
go

alter table CHITIETGIOHANG
   add constraint FK_CHITIETG_CHITIETGI_SACH foreign key (MASACH)
      references SACH (MASACH)
go

alter table DONHANG
   add constraint FK_DONHANG_DUYET_NHANVIEN foreign key (MANV)
      references NHANVIEN (MANV)
go

alter table DONHANG
   add constraint FK_DONHANG_MUA_KHACHHAN foreign key (MAKH)
      references KHACHHANG (MAKH)
go

alter table KHACHHANG
   add constraint FK_KHACHHAN_CO_TAIKHOAN foreign key (TENDANGNHAP)
      references TAIKHOAN (TENDANGNHAP)
go

alter table NHANVIEN
   add constraint FK_NHANVIEN_CUA2_TAIKHOAN foreign key (TENDANGNHAP)
      references TAIKHOAN (TENDANGNHAP)
go

alter table SACH
   add constraint FK_SACH_THUOC_LOAISACH foreign key (MALOAI)
      references LOAISACH (MALOAI)
go

alter table SACH
   add constraint FK_SACH_XUAT_BAN_NHAXUATB foreign key (MANXB)
      references NHAXUATBAN (MANXB)
go

alter table TAIKHOAN
   add constraint FK_TAIKHOAN_CO2_KHACHHAN foreign key (MAKH)
      references KHACHHANG (MAKH)
go

alter table TAIKHOAN
   add constraint FK_TAIKHOAN_CUA_NHANVIEN foreign key (MANV)
      references NHANVIEN (MANV)
go

