#!/bin/bash
set -u

db=$1
imei=$2
uin=$3

key=$(echo -n ${imei}${uin}| md5sum | cut -c -7)

cd $(dirname $db)
sqlcipher "$1" 'PRAGMA key = "'$key'"; PRAGMA cipher_use_hmac = OFF; PRAGMA cipher_page_size = 1024; PRAGMA kdf_iter = 4000; ATTACH DATABASE "decrypted_database.db" AS decrypted_database KEY "";SELECT sqlcipher_export("decrypted_database");DETACH DATABASE decrypted_database;'
