CREATE TABLE kategori (
    id SERIAL PRIMARY KEY,
    nama_kategori VARCHAR(255)
);

CREATE TABLE rak_buku (
    id SERIAL PRIMARY KEY,
    rak VARCHAR(255),
    kapasitas int
);

CREATE TABLE petugas (
    id SERIAL PRIMARY KEY,
    nama VARCHAR(255),
    gmail VARCHAR(255),
    password VARCHAR(255)
);

CREATE TABLE peminjaman (
    id SERIAL PRIMARY KEY,
    nama VARCHAR(255),
    tanggal_peminjaman DATE,
    tanggal_pengembalian DATE,

    petugas_id INT,

    FOREIGN KEY (petugas_id) REFERENCES petugas(id)
);

CREATE TABLE buku (
    id SERIAL PRIMARY KEY,
    judul VARCHAR(255),
    sinopsis TEXT,

    kategori_id INT UNIQUE,
    rak_buku_id INT UNIQUE,
    peminjaman_id INT UNIQUE,

    FOREIGN KEY (kategori_id) REFERENCES kategori(id),
    FOREIGN KEY (rak_buku_id) REFERENCES rak_buku(id),
    FOREIGN KEY (peminjaman_id) REFERENCES peminjaman(id)
);

INSERT INTO kategori (nama_kategori)
VALUES
    ('Fantasi'),
    ('Fiksi ilmiah'),
    ('Horor'),
    ('Kehidupan kota'),
    ('Klasik'),
    ('Misteri & Detektif'),
    ('Novel'), 
    ('Perang & Militer'),
    ('Romantis'),
    ('Sastra');

INSERT INTO rak_buku (rak, kapasitas)
VALUES
    ('A', 50),
    ('B', 50),
    ('C', 50),
    ('D', 50),
    ('E', 50),
    ('F', 50),
    ('G', 50),
    ('H', 50),
    ('I', 50),
    ('J', 50);

INSERT INTO petugas (nama, gmail, password)
VALUES
    ('Lane Duncan', 'iaculis.odio@aol.com', 'OIE86FTK5RD'),
    ('Adrian Puckett', 'rutrum.lorem@protonmail.com', 'WKP26RQR5AL'),
    ('Bert Foreman', 'in@yahoo.com', 'OKF23CPO3AU'),
    ('Martin Kennedy', 'ac.ipsum.phasellus@hotmail.couk', 'YTY84ABH7PS'),
    ('Perry Bean', 'elementum.purus.accumsan@icloud.org', 'XZE39ROT4RW'),
    ('Blaze Martinez', 'nam.consequat.dolor@outlook.ca', 'SZH50IVI5BV'),
    ('Cooper Mckenzie', 'cras.lorem@icloud.org', 'QWI27EJS8SG'),
    ('Ivor Wade', 'eget.odio.aliquam@hotmail.couk', 'IQY77WZH5GT'),
    ('Neville Roth', 'nisl@hotmail.org', 'GPO38XTW8VP'),
    ('Lucy Manning', 'nibh@protonmail.edu', 'LMR63SHH1SU');

INSERT INTO peminjaman (nama, tanggal_peminjaman, tanggal_pengembalian, petugas_id)
VALUES 
    ('Lane Duncan', 'Jan 3, 2026', 'Aug 12, 2026', 1),
    ('Adrian Puckett', 'Jan 3, 2026', 'Aug 12, 2026', 2),
    ('Bert Foreman', 'Jan 3, 2026', 'Aug 12, 2026', 3),
    ('Martin Kennedy', 'Jan 3, 2026', 'Aug 12, 2026', 4),
    ('Perry Bean', 'Jan 3, 2026', 'Aug 12, 2026', 5),
    ('Blaze Martinez', 'Jan 3, 2026', 'Aug 12, 2026', 6),
    ('Cooper Mckenzie', 'Jan 3, 2026', 'Aug 12, 2026', 7),
    ('Ivor Wade', 'Jan 3, 2026', 'Aug 12, 2026', 8),
    ('Neville Roth', 'Jan 3, 2026', 'Aug 12, 2026', 9),
    ('Lucy Manning', 'Jan 3, 2026', 'Aug 12, 2026', 10);

INSERT INTO buku (judul, sinopsis, kategori_id, rak_buku_id, peminjaman_id)
VALUES 
    ('The Chronicle of Minak Jinggo', 'Danu pikir Mario hanya bercanda saat mengatakan bahwa Tika diculik oleh sebuah buku berjudul Minak Jinggo. Namun, begitu mencoba membaca satu halaman, Danu tersedot ke dunia Majapahit kuno, tempat perang, dewa, dan kematian menjadi bagian dari permainan.', 1, 1, 1),
    ('Pata', 'Selama 18 tahun kariernya, Mun Kayoung telah memerankan berbagai peran, meninggalkan kesan yang berbeda dengan suasana hatinya sendiri dalam setiap karyanya. Kini, ia melangkah maju sebagai “Penulis Mun Kayoung”. PATA berisikan refleksi mendalam Mun Kayoung saat ia mengumpulkan pemikiran mendalam untuk menghadapi dirinya sendiri dan dunia di sekelilingnya dengan garang. PATA adalah alter ego yang memberikan kesempatan untuk melihat sisi Mun Kayoung dari perspektif yang lebih jernih tanpa harus melibatkan orang lain.', 2, 2, 2),
    ('Kasih Tubi', 'Kesialan di balik keberuntungan atau keberuntungan di balik kesialan. Kasih Tubi hampir selalu menemukan dirinya kebingungan di antara baik dan buruk, diantara benar dan salah, hingga akhirnya melakukan hal yang salah menjadi normal, sebab semua hal baik tetap berujung pada kesialan bagi dirinya. Maka hitam dan putih tidak lagi penting bagi Kasih, yang penting adalah bertahan untuk tetap hidup meski sering kali inginnya mati saja.', 3, 3, 3),
    ('Hati yang Berani, Sahabat Sejati', 'Melalui berbagai tantangan, Haris dan teman-temannya belajar bahwa tidak semua orang memiliki kebahagiaan yang terlihat dari luar. Tidak hanya itu, mereka juga belajar pentingnya nilainilai kebajikan seperti berbakti (filial piety), ketekunan (diligence), kesederhanaan (frugality), kerukunan (harmony), dan bersyukur (gratitude), untuk memperoleh keberhasilan dan kebahagiaan yang sejati dalam hidup.', 4, 4, 4),
    ('Nikola Maldini', 'Nikola Pramudya Sadeli, si ribut sekaligus juga si pekerja keras yang selalu dihantui oleh mimpi-mimpi buruk akibat kelalaiannya di masa lalu. Pikirannya selalu riuh dengan berbagai hal karena dia adalah tipikal manusia yang sulit untuk dipahami.', 5, 5, 5),
    ('Senja di Alaska', 'Akibat perusahaan keluarganya bangkrut, Arka menjadi sasaran ayahnya untuk bersedia menikah dengan keponakan teman bisnisnya yang bisa memberikan suntikan dana. Namun, Arka yang tidak sudi menikah dengan bocah yang baru saja lulus SMA dan bukan tipenya sama sekalilalu ia memilih mengancam adiknya untuk menggantikan dirinya. Menjadi mempelai pria pengganti bukan keinginan Alaska apalagi mempunyai istri disaat ia sudah memiliki kekasih. Lalu bagaimana kehidupan Senja menghadapi seorang Alaska yang dingin dan enggan menerimanya sebagai istri?', 6, 6, 6),
    ('Lofarsa', 'Minta dijodohkan sebenarnya tidak pernah masuk ke dalam rencana kehidupan masa depan Najmi Desra. Namun sang Papi malah mengamini permintaan isengnya tersebut.', 7, 7, 7),
    ('Anne of Avonlea', 'Kita semua pernah membuat kesalahan. Kita harus menyesali kesalahan kita dan belajar dari situ, tapi jangan pernah terus membawa kesalahan itu ke masa depan. Itulah yang dikisahkan dalam Anne of Avonlea.', 8, 8, 8),
    ('Athar: Cinta Dalam Ikhlas', 'Aurora Cinta Purnama, Aku sudah berusaha mengikhlaskanmu. Namun, pada akhirnya, memang hanya kamu sosok yang kuyakini akan menjadi jodohku nanti. Ya, aku masih berharap kamulah yang menjadi pasanganku, meski sudah bertahun-tahun lamanya kita tak bertemu. Keyakinanku kepadamu tak pernah pudar, fatwa hatiku masih tetap sama. Aku ingin memperjuangkanmu, Ara, supaya kita dapat bersatu. Oleh karena itulah, wajar jika aku berharap kepada Allah agar kita bisa dipertemukan di saat yang tepat. Tapi, apakah kamu menyimpan keyakinan dan keinginan yang sama denganku? Ara, apa pun yang terjadi nanti, aku akan ikhlas dan tetap mencintaimu. ', 9, 9, 9),
    ('Sincerpity', 'Lagi-lagi, penerbit Aristeia menjadi katalis utama atas pertemuan dua insan penggiat seni yang terikat kontrak penerbitan menumbuhkan ikatan mereka sendiri di balik layar profesionalitas. Ikatan yang terhubung atas pencarian arti cinta untuk diri sendiri, secara pribadi dan juga untuk dibagi.', 10, 10, 10);