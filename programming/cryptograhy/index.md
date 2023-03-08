# Cryptography

## Encryption
Encryption: Turns plaintext into cyphertext.
Decryption: Turns cyphertext back into readable plaintext.

## Symmetric encryption
uses the same key to encrypt and decrypt data. This key must be kept secret by both parties.

Simple example: Caesar cipher: each letter is moved one place later in the alphabet. The key (+1) must be used to encrypt and decrypt.


## Asymmetric encryption / Public key cryptograhy
The key used to decrypt a message is different (but mathematically linked) to the key used to encrypt the message.

key pair
  - public key: can be shared with world to encrypt messages for you
  - private key: known only to you, to decrypt messages

Schemes:
  - PGP (Pretty Good Privacy)
  - ECDSA (Elliptic Curve Digital Signature Algorithm) (used by Bitcoin)


Tools: GPG Suite, OpenPGP standards

Certificates are generated with a set of assymmetric keys. The private key needs to be kept secret. The certificate itself is a package of information that is public and includes the public key, information about the algorithm used, the certificate authority (CA) that issued the certificate, the CA's digital signature and other meta data.

When data is put through mathematical algorithm to create a fixed length output of characters, this is called a hash. Both sender and receiver put the data through same mathematical hash function, and if the data has not changed in transit, the resulting hash will be same for both parties, thus proving data integrity.

Authentication uses certificate to prove that the data came from the source you expect it to. This assumes that the private key is held by the sender only. When you have a certificate from a trusted CA, and encrypt the data with a private key, that data can only be decrypted by the public key. This combination gives the receiver reasonable assurance that that data came from the holder of the certificate and provides authentication of the source of data. When combined with hashing you get a digital signature.

A digital signature if used to validate the integrity and origin of data. Digital signatures are not designed to encrypt the data. They use asymmetric keys to encrypt a hash by using private key to encrypt it and public key to decrypt it.

## private key
- Private key can also be used for decrypting data encrypted using a public key.
- used for digitally signing documents


## Hashes
A hash function is a series of mathematical steps or algorithms that you can perform on some input data, resulting in a fingerprint, or digest, or simply, a hash. There are basic hash functions (not used in blockchains) and cryptographic hash functions (used in blockchains).

Hash(input/preimage/message) => 'digest/hash-value/hash'

Hash functions are deterministic: same output for same input

- Simple hash functions
- Cryptographic hash functions

Good cryptographic hash functions:
- MD5 (Message Digest)
- SHA-256 (Secure Hash Algorithm)
Output is usually fixed length in MD5 and SHA-256.
  $ md5 -s "what?"
  $ echo "what?" | shasum -a 256

## Digital Signature
A digital signature is created by taking the message you want to sign and applying a mathematical formula with your private key. Anyone who knows your public key can mathematically verify that this signature was indeed created by the holder of the associated private key.

  Message + Private key => Digital Signature
  Message + Digital signature + Public Key => Valid/Invalid

- only valid for the exact piece of data (cannnot be copied pasted or reused)
- any tampering with the message will result in the signature being invalidated.
- serves as one-time proof that the person with the private key really did approve the exact message
- non-repudiation: sender cannot say it was not me
