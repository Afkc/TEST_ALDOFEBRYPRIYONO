<img width="1011" height="897" alt="image" src="https://github.com/user-attachments/assets/b5442c35-e594-4d74-b1d8-ca25f2e0c985" />SOAL TEST PROGRAMMING PROQUA
1.	Buatkan sebuah algoritma bubble short dengan PHP! Jelaskan logikanya sejelas mungkin. Anda diperbolehkan menggunakan pseudocode, flowchart, atau penjelasan secara tekstual.
2.	Buatkan sebuah algoritma dengan loop (Bebas dengan while, do-while, for, foreach) untuk menentukan angka ganjil genap. Jelaskan logikanya sejelas mungkin. Anda diperbolehkan menggunakan pseudocode, flowchart, atau penjelasan secara tekstual.
3.	Buat beberapa tabel :
 
a.	Urutkan table tersebut berdasarkan relasi data
b.	Buatkan sebuah Aplikasi CRUD sederhana dengan CI4 dan MYSQL lewat table tersebut. Gunakan Join untuk menampilkan data table masing-masing.
c.	Aplikasi dibuat dengan jquery, tidak diperkenankan menggunakan reload page. Diperbolehkan menggunakan modal/datatable bootstrap untuk memperbagus tampilan. Gunakan validasi agar tidak boleh ada satupun inputan form yang kosong. Setiap action done, mohon ditampilkan alert berhasil dan gagal dengan jquery.
d.	Tambahkan table diagnosis dan jenis kelamin, tentukan sendiri Dimana kedua table tersebut akan direlasikan. Lalu buat CRUD nya.
4.	Upload hasil koding dan dokumentasi di GitHub anda.

Jawab
1.
________________________________________
💡 Apa itu Bubble Sort?
Bubble Sort adalah algoritma pengurutan sederhana yang bekerja dengan cara membandingkan elemen yang berdekatan, lalu menukarnya jika urutannya salah, dan terus diulang sampai tidak ada lagi yang perlu ditukar. Ini disebut "bubble" karena nilai besar akan "menggelembung" ke posisi akhir array.
________________________________________
🔄 Logika Bubble Sort
1.	Mulai dari elemen pertama hingga terakhir-1.
2.	Bandingkan elemen ke-i dengan ke-i+1.
3.	Jika elemen ke-i > ke-i+1, tukar posisi mereka.
4.	Lakukan terus untuk seluruh elemen.
5.	Ulangi proses ini sebanyak n-1 kali (dengan n adalah jumlah elemen), atau sampai tidak ada lagi pertukaran.
________________________________________
📋 Pseudocode Bubble Sort
text
SalinEdit
procedure BubbleSort(arr)
    n = length of arr
    repeat
        swapped = false
        for i = 0 to n - 2
            if arr[i] > arr[i+1] then
                swap arr[i] and arr[i+1]
                swapped = true
        end for
    until not swapped
end procedure
________________________________________
🧠 Penjelasan Singkat
•	n - 1 karena elemen terakhir tidak perlu dibandingkan dengan dirinya sendiri.
•	Proses berhenti jika sudah tidak ada yang ditukar dalam satu putaran → berarti array sudah terurut.
________________________________________
💻 Contoh Kode PHP Bubble Sort
php
SalinEdit
<?php
function bubbleSort(&$arr) {
    $n = count($arr);
    for ($i = 0; $i < $n - 1; $i++) {
        for ($j = 0; $j < $n - $i - 1; $j++) {
            if ($arr[$j] > $arr[$j + 1]) {
                // Tukar elemen
                $temp = $arr[$j];
                $arr[$j] = $arr[$j + 1];
                $arr[$j + 1] = $temp;
            }
        }
    }
}

// Contoh penggunaan
$data = [5, 3, 8, 4, 2];
bubbleSort($data);
echo "Hasil sorting: " . implode(", ", $data);
?>
________________________________________
🧾 Output
yaml
SalinEdit
Hasil sorting: 2, 3, 4, 5, 8
________________________________________
📊 Flowchart Sederhana
(Secara tekstual):
pgsql
SalinEdit
START
↓
Input array
↓
FOR i = 0 to n-1
    FOR j = 0 to n-i-1
        IF arr[j] > arr[j+1]
            SWAP arr[j] and arr[j+1]
        ENDIF
    ENDFOR
ENDFOR
↓
Output array
↓
END
________________________________________
Kalau kamu butuh diagram flowchart dalam bentuk gambar atau versi optimasi (dengan swapped flag), tinggal bilang ya!
Kodingan full
<img width="1011" height="897" alt="image" src="https://github.com/user-attachments/assets/32f7c135-7d8e-40b7-9b96-8bc8afaa8923" />
Hasil
 <img width="572" height="286" alt="image" src="https://github.com/user-attachments/assets/a7ba18bc-a408-4f24-8628-7b1d59ceccfb" />

2.
💡 Tujuan Program
Membuat algoritma dengan loop (contoh: for) untuk menentukan apakah sebuah angka ganjil atau genap.
________________________________________
🔄 Logika Program
1.	User/Program memberikan rentang angka atau sebuah array angka.
2.	Loop digunakan untuk mengecek setiap angka satu per satu.
3.	Untuk setiap angka:
o	Jika habis dibagi 2 (angka % 2 == 0) → Genap.
o	Jika tidak habis dibagi 2 (angka % 2 != 0) → Ganjil.
4.	Tampilkan hasilnya.
________________________________________
📋 Pseudocode
text
SalinEdit
procedure CekGanjilGenap
    input: angka_angka[]
    for each angka in angka_angka
        if angka mod 2 == 0 then
            print angka + " adalah Genap"
        else
            print angka + " adalah Ganjil"
        end if
    end for
end procedure
________________________________________
🧠 Penjelasan Sederhana
•	Gunakan operator modulus (%) untuk mengecek sisa bagi.
•	Jika sisa bagi 2 adalah 0, maka angka tersebut genap.
•	Loop digunakan untuk mengulang proses pengecekan untuk setiap elemen angka.
________________________________________
💻 Kode PHP Lengkap
php
SalinEdit
<?php
// Array angka untuk dicek
$angkaArray = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

// Loop untuk mengecek ganjil/genap
for ($i = 0; $i < count($angkaArray); $i++) {
    $angka = $angkaArray[$i];
    if ($angka % 2 == 0) {
        echo "$angka adalah Genap\n";
    } else {
        echo "$angka adalah Ganjil\n";
    }
}
?>
________________________________________
🧾 Output Contoh
python-repl
SalinEdit
1 adalah Ganjil
2 adalah Genap
3 adalah Ganjil
...
10 adalah Genap
________________________________________
🧭 Flowchart Tekstual
pgsql
SalinEdit
START
↓
Input array angka
↓
FOR i = 0 to jumlah elemen - 1
    IF angka[i] % 2 == 0 THEN
        Cetak "Genap"
    ELSE
        Cetak "Ganjil"
    ENDIF
ENDFOR
↓
END
________________________________________

Kodingan lengkap
 <img width="991" height="720" alt="image" src="https://github.com/user-attachments/assets/c0905622-bd4b-4687-87ec-64f04fcdac5a" />

Hasil
 
<img width="958" height="366" alt="image" src="https://github.com/user-attachments/assets/495c3fea-57dd-4f75-a2b6-908866756a43" />

3.
a. Urutkan Tabel Berdasarkan Relasi Data
Berdasarkan data yang diberikan, berikut adalah relasi antar tabel:
1.	Pasien (Id, nama, norm)
2.	Pendaftaran (Id, pasienid, noregistrasi, idregistrasi)
3.	Kunjungan (id, pendaftaranpasienid, jeniskunjungan, tglkunjungan)
4.	Asesmen (Id, kunjunganid, keluhan_utama, keluhan_tambahan)
Relasi:
•	Pasien ke Pendaftaran: 1 ke N (satu pasien bisa memiliki banyak pendaftaran)
•	Pendaftaran ke Kunjungan: 1 ke N (satu pendaftaran bisa memiliki banyak kunjungan)
•	Kunjungan ke Asesmen: 1 ke N (satu kunjungan bisa memiliki banyak asesmen)
b. CRUD
codingan
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
  FOREIGN KEY (jenis_kelamin_id) REFERENCES jenis_kelamin(id)
);

CREATE TABLE pendaftaran (
  id INT AUTO_INCREMENT PRIMARY KEY,
  pasienid INT,
  noregistrasi VARCHAR(50),
  idregistrasi VARCHAR(50),
  FOREIGN KEY (pasienid) REFERENCES pasien(id)
);

CREATE TABLE kunjungan (
  id INT AUTO_INCREMENT PRIMARY KEY,
  pendaftaranpasienid INT,
  jeniskunjungan VARCHAR(100),
  tglkunjungan DATE,
  diagnosis_id INT,
  FOREIGN KEY (pendaftaranpasienid) REFERENCES pendaftaran(id),
  FOREIGN KEY (diagnosis_id) REFERENCES diagnosis(id)
);

CREATE TABLE asesmen (
  id INT AUTO_INCREMENT PRIMARY KEY,
  kunjunganid INT,
  keluhan_utama TEXT,
  keluhan_tambahan TEXT,
  FOREIGN KEY (kunjunganid) REFERENCES kunjungan(id)
);

Untuk hasil
 <img width="1655" height="264" alt="image" src="https://github.com/user-attachments/assets/a064ec3f-d8ef-4489-9d03-c8cb07334e56" />

C. Hasil teks
Tambah
 <img width="1625" height="392" alt="image" src="https://github.com/user-attachments/assets/eef8fdc1-555c-4781-974a-93ea38bf2dfe" />

Hapus

<img width="1409" height="359" alt="image" src="https://github.com/user-attachments/assets/189399a6-04bf-4da8-b257-1c094f88807d" />

d. Hasil Diagnose dan jenis kelamin add
 <img width="1450" height="681" alt="image" src="https://github.com/user-attachments/assets/f0a8206f-4e43-44a5-9905-8f65b8cef9ae" />

Hapus
 <img width="1456" height="409" alt="image" src="https://github.com/user-attachments/assets/80bd4149-84d4-4528-9d16-2ee98f00186e" />

Hasilnya
 
