# encryption

* Asymmetric key encryption uses a pair of keys. A public key that can be freely shared and a private key that should be kept secret. The public key is used to decrypt anything encrypted by the private key and vice-versa.
* Symmetric key encryption uses the same key to encrypt and decrypt data. This key must be kept secret by both parties.

Certificates are generated with a set of assymmetric keys. The private key needs to be kept secret. The certificate itself is a package of information that is public and includes the public key, information about the algorithm used, the certificate authority (CA) that issued the certificate, the CA's digital signature and other meta data.

When data is put through mathematical algorithm to create a fixed length output of characters, this is called a hash. Both sender and receiver put the data through same mathematical hash function, and if the data has not changed in transit, the resulting hash will be same for both parties, thus proving data integrity.

Authentication uses certificate to prove that the data came from the source you expect it to. This assumes that the private key is held by the sender only. When you have a certificate from a trusted CA, and encrypt the data with a private key, that data can only be decrypted by the public key. This combination gives the receiver reasonable assurance that that data came from the holder of the certificate and provides authentication of the source of data. When combined with hashing you get a digital signature.

A digital signature if used to validate the integrity and origin of data. Digital signatures are not designed to encrypt the data. They use asymmetric keys to encrypt a hash by using private key to encrypt it and public key to decrypt it.

## private key
- Private key can also be used for decrypting data encrypted using a public key.
- used for digitally signing documents


