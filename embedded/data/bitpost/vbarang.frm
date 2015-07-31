TYPE=VIEW
query=select `b`.`Kode` AS `Kode`,`b`.`Barang` AS `Barang`,`s`.`Satuan` AS `Satuan`,`j`.`Jenis` AS `Jenis`,`b`.`Barcode` AS `Barcode` from ((`bitpost`.`masbrg` `b` join `bitpost`.`massat` `s` on((`b`.`Satuan` = `s`.`kode`))) join `bitpost`.`masjns` `j` on((`b`.`jenis` = `j`.`kode`))) order by `b`.`Kode`,`b`.`Barang`
md5=a6b12c097e21c5a9d8af18d15eb87c50
updatable=1
algorithm=0
definer_user=ODBC
definer_host=localhost
suid=2
with_check_option=0
timestamp=2015-07-22 16:06:24
create-version=1
source=Select `b`.`Kode`, `b`.`Barang`, `s`.`Satuan`, `j`.`Jenis`, `b`.`Barcode`  From `masbrg` as b inner join `massat` as s on (`b`.`satuan` = `s`.`kode`) inner join `masjns` as j on (`b`.`jenis` = `j`.`kode`) Order by `b`.`Kode`, `b`.`Barang` asc
client_cs_name=latin1
connection_cl_name=latin1_swedish_ci
view_body_utf8=select `b`.`Kode` AS `Kode`,`b`.`Barang` AS `Barang`,`s`.`Satuan` AS `Satuan`,`j`.`Jenis` AS `Jenis`,`b`.`Barcode` AS `Barcode` from ((`bitpost`.`masbrg` `b` join `bitpost`.`massat` `s` on((`b`.`Satuan` = `s`.`kode`))) join `bitpost`.`masjns` `j` on((`b`.`jenis` = `j`.`kode`))) order by `b`.`Kode`,`b`.`Barang`
