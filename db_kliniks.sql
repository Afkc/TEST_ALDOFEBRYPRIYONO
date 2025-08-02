CREATE DATABASE db_kliniks;
USE db_kliniks;

CREATE TABLE jenis_kelamin (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nama VARCHAR(50)
);

-- INSERT DATA JENIS KELAMIN
INSERT INTO jenis_kelamin (nama) VALUES
('Laki-Laki'),
('Perempuan');

CREATE TABLE diagnosis (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nama_diagnosis VARCHAR(100)
);

CREATE TABLE pasien (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nama VARCHAR(100),
  norm VARCHAR(20),
  jenis_kelamin_id INT,
  FOREIGN KEY (jenis_kelamin_id) REFERENCES jenis_kelamin(id) ON DELETE CASCADE
);

CREATE TABLE pendaftaran (
  id INT AUTO_INCREMENT PRIMARY KEY,
  pasienid INT,
  noregistrasi VARCHAR(50),
  idregistrasi VARCHAR(50),
  FOREIGN KEY (pasienid) REFERENCES pasien(id) ON DELETE CASCADE
);

CREATE TABLE kunjungan (
  id INT AUTO_INCREMENT PRIMARY KEY,
  pendaftaranpasienid INT,
  jeniskunjungan VARCHAR(100),
  tglkunjungan DATE,
  diagnosis_id INT,
  FOREIGN KEY (pendaftaranpasienid) REFERENCES pendaftaran(id) ON DELETE CASCADE,
  FOREIGN KEY (diagnosis_id) REFERENCES diagnosis(id) ON DELETE CASCADE
);

CREATE TABLE asesmen (
  id INT AUTO_INCREMENT PRIMARY KEY,
  kunjunganid INT,
  keluhan_utama TEXT,
  keluhan_tambahan TEXT,
  FOREIGN KEY (kunjunganid) REFERENCES kunjungan(id) ON DELETE CASCADE
);