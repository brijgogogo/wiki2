# referring to commits
Git refers to commits using hash values. When we submit changes to repository, Git generates a checksum for each change set. Checksum algorithms convert data into a simple numbers. Same data always equals same checksum.
Git uses SHA-1 has algorithm to create checksums
40 character hexadecimal

each commit/snapshot has:
* sha/checksum/commit id
* parent: last checksum
* author of current changes
* message

