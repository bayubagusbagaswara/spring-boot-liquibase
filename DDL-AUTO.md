# DDL-AUTO NONE

spring.datasource.hibernate.ddl-auto=none adalah pengaturan konfigurasi yang digunakan dalam aplikasi Spring Boot untuk mengendalikan perilaku otomatisasi skema database (Database Definition Language atau DDL) oleh Hibernate. Nilai none pada ddl-auto menunjukkan bahwa Anda tidak ingin Hibernate melakukan operasi otomatisasi DDL apa pun pada database.

Ketika Anda mengatur spring.datasource.hibernate.ddl-auto=none, berikut adalah beberapa hal yang terjadi:

Hibernate tidak akan membuat tabel baru atau memodifikasi skema database apa pun secara otomatis.

Ini berarti bahwa Hibernate tidak akan menjalankan perintah DDL seperti CREATE TABLE, ALTER TABLE, atau DROP TABLE untuk menciptakan, mengubah, atau menghapus tabel yang sesuai dengan entitas Anda.

Anda bertanggung jawab untuk membuat skema database dan tabel secara manual atau menggunakan skrip SQL yang sesuai.

Ini adalah pengaturan yang umumnya digunakan di lingkungan produksi, di mana Anda ingin menjaga kontrol penuh terhadap skema database Anda dan mencegah Hibernate untuk membuat atau mengubah struktur tabel tanpa otorisasi yang jelas.

Penting untuk diingat bahwa ketika Anda mengatur ddl-auto ke none, Anda harus memastikan bahwa skema database sudah ada dan sesuai dengan definisi entitas Anda. Jika ada perubahan skema yang diperlukan, Anda harus melakukan perubahan tersebut secara manual melalui skrip SQL atau alat manajemen basis data yang sesuai.