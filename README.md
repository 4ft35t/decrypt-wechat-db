# decrypt-wechat-db
Decrypt wechat db file EnMicroMsg.db with sqlcipher v2.1.1-2

deb files from https://launchpad.net/ubuntu/+source/sqlcipher/2.1.1-2/+build/4642377

Decrypt Parameters from
- https://github.com/ppwwyyxx/wechat-dump
- https://caiyao.name/2016/08/17/linux%E4%BD%BF%E7%94%A8sqlcipher%E8%A7%A3%E5%AF%86sqlite/

### Usage Example

```bash
docker run --rm -v `pwd`:/tmp c403/decrypt-wechat-db /decrypt.sh /tmp/EnMicroMsg.db $imei $uin
```

__decrypted_database.db__ will generated at current dir.
