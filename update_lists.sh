NEW=$(date '+%F_%H%M')
mkdir -p "lists/${NEW}"
mkdir -p tmp
curl 'ftp://ftp.ut-capitole.fr/pub/reseau/cache/squidguard_contrib/porn.tar.gz' -o tmp/porn.tar.gz
tar -zxvf tmp/porn.tar.gz --strip-components 1 adult/domains
mv domains "lists/${NEW}/porn.list"
curl 'ftp://ftp.ut-capitole.fr/pub/reseau/cache/squidguard_contrib/dating.tar.gz' -o tmp/dating.tar.gz
tar -zxvf tmp/dating.tar.gz --strip-components 1 dating/domains
mv domains "lists/${NEW}/dating.list"
curl 'ftp://ftp.ut-capitole.fr/pub/reseau/cache/squidguard_contrib/drugs.tar.gz' -o tmp/drugs.tar.gz
tar -zxvf tmp/drugs.tar.gz --strip-components 1 drogue/domains
mv domains "lists/${NEW}/drugs.list"
curl 'ftp://ftp.ut-capitole.fr/pub/reseau/cache/squidguard_contrib/proxy.tar.gz' -o tmp/proxy.tar.gz
tar -zxvf tmp/proxy.tar.gz --strip-components 1 redirector/domains
mv domains "lists/${NEW}/proxy.list"
curl 'ftp://ftp.ut-capitole.fr/pub/reseau/cache/squidguard_contrib/sexual_education.tar.gz' -o tmp/sexual_education.tar.gz
tar -zxvf tmp/sexual_education.tar.gz --strip-components 1 sexual_education/domains
mv domains "lists/${NEW}/sexual_education.list"
curl 'ftp://ftp.ut-capitole.fr/pub/reseau/cache/squidguard_contrib/violence.tar.gz' -o tmp/violence.tar.gz
tar -zxvf tmp/violence.tar.gz --strip-components 1 agressif/domains
mv domains "lists/${NEW}/violence.list"
rm -r tmp
rm -r lists/current
cp -r "lists/${NEW}" lists/current
