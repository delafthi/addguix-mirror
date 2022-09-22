his branch is required for signing guix channel.

An example of adding developer's key to the channel:

gpg --search-keys delafontaineth@pm.me
gpg --list-public-keys --keyid-format long | grep S
gpg --armor --export Thierry\ Delafontaine > delafthi-636580A5946D693E.key
