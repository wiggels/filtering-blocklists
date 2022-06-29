rm -r lists/current
mkdir -p lists/current
mkdir -p tmp
curl -sS 'ftp://ftp.ut-capitole.fr/pub/reseau/cache/squidguard_contrib/porn.tar.gz' -o tmp/porn.tar.gz
tar -zxf tmp/porn.tar.gz --strip-components 1 adult/domains
sed -in '/\([0-9]\{1,3\}\.\)\{3\}[0-9]\{1,3\}/d' domains
mv domains lists/current/porn.list
curl -sS 'ftp://ftp.ut-capitole.fr/pub/reseau/cache/squidguard_contrib/dating.tar.gz' -o tmp/dating.tar.gz
tar -zxf tmp/dating.tar.gz --strip-components 1 dating/domains
sed -in '/\([0-9]\{1,3\}\.\)\{3\}[0-9]\{1,3\}/d' domains
mv domains lists/current/dating.list
curl -sS 'ftp://ftp.ut-capitole.fr/pub/reseau/cache/squidguard_contrib/drugs.tar.gz' -o tmp/drugs.tar.gz
tar -zxf tmp/drugs.tar.gz --strip-components 1 drogue/domains
sed -in '/\([0-9]\{1,3\}\.\)\{3\}[0-9]\{1,3\}/d' domains
mv domains lists/current/drugs.list
curl -sS 'ftp://ftp.ut-capitole.fr/pub/reseau/cache/squidguard_contrib/proxy.tar.gz' -o tmp/proxy.tar.gz
tar -zxf tmp/proxy.tar.gz --strip-components 1 redirector/domains
sed -in '/\([0-9]\{1,3\}\.\)\{3\}[0-9]\{1,3\}/d' domains
mv domains lists/current/proxy.list
curl -sS 'ftp://ftp.ut-capitole.fr/pub/reseau/cache/squidguard_contrib/sexual_education.tar.gz' -o tmp/sexual_education.tar.gz
tar -zxf tmp/sexual_education.tar.gz --strip-components 1 sexual_education/domains
mv domains lists/current/sexual_education.list
curl -sS 'ftp://ftp.ut-capitole.fr/pub/reseau/cache/squidguard_contrib/violence.tar.gz' -o tmp/violence.tar.gz
tar -zxf tmp/violence.tar.gz --strip-components 1 agressif/domains
sed -in '/\([0-9]\{1,3\}\.\)\{3\}[0-9]\{1,3\}/d' domains
mv domains lists/current/violence.list
rm -r tmp
rm domainsn
