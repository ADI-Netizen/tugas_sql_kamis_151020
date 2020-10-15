CREATE DATABASE adioktober_1;
USE adioktober_1;

CREATE TABLE tbl_toko (id_toko INT PRIMARY KEY AUTO_INCREMENT, nama_toko VARCHAR(50), logo_toko VARCHAR(100), alamat_toko VARCHAR(100), kontak_toko VARCHAR(20), npwp_toko VARCHAR(15)UNIQUE, is_active BINARY);
SHOW COLUMNS FROM tbl_toko;

CREATE TABLE tbl_jabatan (id_jabatan TINYINT PRIMARY KEY AUTO_INCREMENT, nama_jabatan VARCHAR(30), is_active BINARY);
SHOW COLUMNS FROM tbl_jabatan;

CREATE TABLE tbl_karyawan (id_karyawan INT PRIMARY KEY AUTO_INCREMENT, nik VARCHAR(20), nama_karyawan VARCHAR(50), tgl_lahir DATE, jk ENUM("Pria", "Wanita"), alamat_karyawan VARCHAR(100), kontak_karyawan VARCHAR(14), email_karyawan VARCHAR(30)UNIQUE, npwp_karyawan VARCHAR(15)UNIQUE, no_rek VARCHAR(30)UNIQUE, id_jabatan INT, is_active BINARY);
SHOW COLUMNS FROM tbl_karyawan;

CREATE TABLE tbl_pos (id_pos TINYINT PRIMARY KEY AUTO_INCREMENT, nama_pos VARCHAR(30), is_active BINARY);
SHOW COLUMNS FROM tbl_pos;

CREATE TABLE tbl_login (id_karyawan INT, username VARCHAR(20), pass VARCHAR(20), lv ENUM("Owner", "Manager", "Supervisor", "Foreman", "Cashier", "Goods"), is_active BINARY);
SHOW COLUMNS FROM tbl_login;

CREATE TABLE tbl_rak (id_rak TINYINT PRIMARY KEY AUTO_INCREMENT, nama_rak VARCHAR(20), posisi_rak ENUM("L1", "L2", "L3"), is_active BINARY);
SHOW COLUMNS FROM tbl_rak;

CREATE TABLE tbl_satuan(id_satuan TINYINT PRIMARY KEY AUTO_INCREMENT, nama_satuan VARCHAR(20), keterangan VARCHAR(100), is_active BINARY);
DESCRIBE tbl_satuan;

CREATE TABLE tbl_barang (id_barang INT PRIMARY KEY, barcode VARCHAR(50), nama_barang VARCHAR(100), harga FLOAT(7,2), stock INT, id_satuan TINYINT, is_active BINARY);
DESCRIBE tbl_barang;

CREATE TABLE tbl_pelanggan (id_pelanggan INT PRIMARY KEY, nama_pelanggan VARCHAR(50), jk ENUM("Pria", "Wanita"), tgl_lahir DATE, alamat VARCHAR(100), kontak VARCHAR(14), poin INT, is_active BINARY);
DESCRIBE tbl_pelanggan;

CREATE TABLE tbl_transaksi (id_transaksi BIGINT PRIMARY KEY, id_pos TINYINT, id_karyawan INT, id_pelanggan INT, id_barang INT, jumlah INT, waktu_transaksi TIMESTAMP);
DESCRIBE tbl_transaksi;

SHOW TABLES