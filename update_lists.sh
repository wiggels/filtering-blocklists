NEW=$(date '+%F_%H%M')
mkdir -p "lists/${NEW}"
mkdir -p tmp
cd tmp
curl -O 'ftp://ftp.ut-capitole.fr/pub/reseau/cache/squidguard_contrib/porn.tar.gz'
cd ..
tar -zxvf tmp/porn.tar.gz --strip-components 1 adult/domains
mv domains "lists/${NEW}/porn.list"
rm -r tmp
rm -r lists/current
ln -s "${NEW}" lists/current
