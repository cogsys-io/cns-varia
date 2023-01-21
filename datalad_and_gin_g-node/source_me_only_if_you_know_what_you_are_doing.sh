#!/usr/bin/env bash

pip install datalad-installer
datalad-installer

mkdir -pv "${HOME}/.ssh/" && touch "${HOME}/.ssh/id_rsa"
mv -f "${HOME}/.ssh/id_rsa" "${HOME}/.ssh/id_rsa_$(date +'%Y%m%dT%H%M%S%6N')"
ssh-keygen -f "${HOME}/.ssh/id_rsa" -t rsa -b 4096 -N "" -C "test@colab.ok"

cat "${HOME}/.ssh/id_rsa.pub"

echo ""
echo ""
echo "Use tha last line from the above output to add the PUBLIC ssh key to your"
echo "gin.g-node SSH Keys list."
echo "* Your Avatar → Your Settings → SSH Keys → Add Key"
echo "* Key Name is arbitrary,"
echo "* Content should be pasted from the last line of the above output,"
echo "  e.g., ``ssh-rsa AAAAB3N...Zwpd7Tfw== test@colab.ok``,"
echo "* Click Add Key"
echo "* NB: Typically on a persistent machine you would generate one keypair"
echo "  using ssh-keygen (also typically you would use a non-blank passphrase"
echo "  to protect it)."
echo ""
echo ""

cat << EOT > "${HOME}/.ssh/config"
Host gin.g-node.org
  HostName gin.g-node.org
  User git
  AddKeysToAgent yes
  IdentityFile /root/.ssh/id_rsa
EOT

eval $(ssh-agent -s)
ssh-add "${HOME}/.ssh/id_rsa"

# datalad install git@gin.g-node.org:/EbenMoss/c1244_cns_mri_dicoms_defaced.git
