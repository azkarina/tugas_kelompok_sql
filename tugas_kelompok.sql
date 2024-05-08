create table pelanggan (
    id_pelanggan char(7) PRIMARY KEY,
    nama_pelanggan varchar(100),
    alamat text,
    email varchar(50),
    no_telp varchar (15)
);

CREATE TABLE produk(
    id_produk char (7) PRIMARY KEY,
    nama_produk varchar (100),
    harga int(11), 
    stok int(11)
);

CREATE TABLE transaksi(
    id_transaksi char (7) PRIMARY KEY,
    tanggal_transaksi date
);

CREATE TABLE transaksi_detail(
    id_detail char (7) PRIMARY KEY,
    id_pelanggan char (7),
    id_produk char (7),
    id_transaksi char (7),
    qty int (11),
    harga int (11),
    sub_total int (11)
);

insert into transaksi_detail values(
    'd_001',
    'pel_001',
    'pro_001',
    'tra_001',
    2,
    25000,
    50000
), (
    'd_002',
    'pel_002',
    'pro_002',
    'tra_002',
    3,
    6000,
    18000
), (
    'd_003',
    'pel_003',
    'pro_003',
    'tra_003',
    5,
    10000,
    50000
), (
    'd_004',
    'pel_004',
    'pro_004',
    'tra_004',
    10,
    5000,
    50000
);

insert into pelanggan values(
    'pel-001',
    "Aulia",
    "Jl. raya pinang 51",
    "aulia@gmail.com",
    "081231780978"
), (
    "pel-002",
    "Herman",
    "Jl. Veteran",
    "herman@gmail.com",
    "08583921348"
), (
    "pel-003",
    "Azka",
    "Jl. ketapang ujung",
    "azka@gmail.com",
    "081324180978"
), (
    "pel-004",
    "Hafis jibril",
    "Jl. gaga 29",
    "jibril_hafis@gmail.com",
    "082312344559"
);

insert into produk values(
    'pro_001',
    "Mcb schneiderc16",
    25000,
    50
), (
    'pro_002',
    "Stop kontak uticon",
    6000,
    80
), (
    'pro_003',
    "Box mcb",
    10000,
    90
), (
    'pro_004',
    "Selotip hitam",
    5000,
    50
);

insert into transaksi values(
    'tra_001',
    date '2024-01-15'
), (
    'tra_002',
    date '2023-01-15'
), (
    'tra_003',
    date '2024-02-19'
), (
    'tra_004',
    date '2024-03-25'
);
