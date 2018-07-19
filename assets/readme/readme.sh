#!/bin/sh
# Energized Blu - Readme Creator
# make time stamp update
TIMESTAMP=`date +'%b %d, %Y'`
VERSION=`date +'%y.%m.%j'`
# Directory
bsc=../../basic/formats
hblu=../../blu/formats
bGo=../../bluGo/formats
prn=../../porn/formats
ulm=../../ultimate/formats
unf=../../unified/formats

# Entries Count
basict=$(egrep 'Total Domains:' $bsc/hosts)
blut=$(egrep 'Total Domains: ' $hblu/hosts)
blugot=$(egrep 'Total Domains: ' $bGo/hosts)
pornt=$(egrep 'Total Domains: ' $prn/hosts)
ultimatet=$(egrep 'Total Domains: ' $ulm/hosts)
unifiedt=$(egrep 'Total Domains: ' $unf/hosts)
# RAW & TXT Size
basics=$(ls -lah $bsc/hosts | awk '{print $5}')
blus=$(ls -lah $hblu/hosts | awk '{print $5}')
blugos=$(ls -lah $bGo/hosts | awk '{print $5}')
porns=$(ls -lah $prn/hosts | awk '{print $5}')
ultimates=$(ls -lah $ulm/hosts | awk '{print $5}')
unifieds=$(ls -lah $unf/hosts | awk '{print $5}')
# Domains List Size
basicds=$(ls -lah $bsc/domains.txt | awk '{print $5}')
bluds=$(ls -lah $hblu/domains.txt | awk '{print $5}')
blugods=$(ls -lah $bGo/domains.txt | awk '{print $5}')
pornds=$(ls -lah $prn/domains.txt | awk '{print $5}')
ultimateds=$(ls -lah $ulm/domains.txt | awk '{print $5}')
unifiedds=$(ls -lah $unf/domains.txt | awk '{print $5}')
# DNSMasq Size
basiccs=$(ls -lah $bsc/dnsmasq.conf | awk '{print $5}')
blucs=$(ls -lah $hblu/dnsmasq.conf | awk '{print $5}')
blugocs=$(ls -lah $bGo/dnsmasq.conf | awk '{print $5}')
porncs=$(ls -lah $prn/dnsmasq.conf | awk '{print $5}')
ultimatecs=$(ls -lah $ulm/dnsmasq.conf | awk '{print $5}')
unifiedcs=$(ls -lah $unf/dnsmasq.conf | awk '{print $5}')
# DNSMasq IPV6 Size
basicc6s=$(ls -lah $bsc/dnsmasq-ipv6.conf | awk '{print $5}')
bluc6s=$(ls -lah $hblu/dnsmasq-ipv6.conf | awk '{print $5}')
blugoc6s=$(ls -lah $bGo/dnsmasq-ipv6.conf | awk '{print $5}')
pornc6s=$(ls -lah $prn/dnsmasq-ipv6.conf | awk '{print $5}')
ultimatec6s=$(ls -lah $ulm/dnsmasq-ipv6.conf | awk '{print $5}')
unifiedc6s=$(ls -lah $unf/dnsmasq-ipv6.conf | awk '{print $5}')
# Unbound Size
basicus=$(ls -lah $bsc/unbound.conf | awk '{print $5}')
bluus=$(ls -lah $hblu/unbound.conf | awk '{print $5}')
blugous=$(ls -lah $bGo/unbound.conf | awk '{print $5}')
pornus=$(ls -lah $prn/unbound.conf | awk '{print $5}')
ultimateus=$(ls -lah $ulm/unbound.conf | awk '{print $5}')
unifiedus=$(ls -lah $unf/unbound.conf | awk '{print $5}')
# RPZ Size
basicrs=$(ls -lah $bsc/unbound.conf | awk '{print $5}')
blurs=$(ls -lah $hblu/unbound.conf | awk '{print $5}')
blugors=$(ls -lah $bGo/unbound.conf | awk '{print $5}')
pornrs=$(ls -lah $prn/unbound.conf | awk '{print $5}')
ultimaters=$(ls -lah $ulm/unbound.conf | awk '{print $5}')
unifiedrs=$(ls -lah $unf/unbound.conf | awk '{print $5}')
# add to readme
sed -e "s/_timestamp_/$TIMESTAMP/g" -e "s/_version_/$VERSION/g" -e "s/_basict_/$bsct/g" -e "s/_blut_/$hblut/g" -e "s/_blugot_/$bGot/g" -e "s/_pornt_/$prnt/g" -e "s/_ultimatet_/$ulmt/g" -e "s/_unifiedt_/$unft/g" -e "s/_basics_/$bscs/g" -e "s/_blus_/$hblus/g" -e "s/_blugos_/$bGos/g" -e "s/_porns_/$prns/g" -e "s/_ultimates_/$ulms/g" -e "s/_unifieds_/$unfs/g" -e "s/_basicds_/$bscds/g" -e "s/_bluds_/$hbluds/g" -e "s/_blugods_/$bGods/g" -e "s/_pornds_/$prnds/g" -e "s/_ultimateds_/$ulmds/g" -e "s/_unifiedds_/$unfds/g" -e "s/_basiccs_/$bsccs/g" -e "s/_blucs_/$hblucs/g" -e "s/_blugocs_/$bGocs/g" -e "s/_porncs_/$prncs/g" -e "s/_ultimatecs_/$ulmcs/g" -e "s/_unifiedcs_/$unfcs/g" -e "s/_basicc6s_/$bscc6s/g" -e "s/_bluc6s_/$hbluc6s/g" -e "s/_blugoc6s_/$bGoc6s/g" -e "s/_pornc6s_/$prnc6s/g" -e "s/_ultimatec6s_/$ulmc6s/g" -e "s/_unifiedc6s_/$unfc6s/g" -e "s/_basicus_/$bscus/g" -e "s/_bluus_/$hbluus/g" -e "s/_blugous_/$bGous/g" -e "s/_pornus_/$prnus/g" -e "s/_ultimateus_/$ulmus/g" -e "s/_unifiedus_/$unfus/g" -e "s/_basicrs_/$bscrs/g" -e "s/_blurs_/$hblurs/g" -e "s/_blugors_/$bGors/g" -e "s/_pornrs_/$prnrs/g" -e "s/_ultimaters_/$ulmrs/g" -e "s/_unifiedrs_/$unfrs/g" readme.template > ../readme.tmp
echo >> ../readme.tmp
# add to file
cat ../readme.tmp  > ../README.md
echo "- Adding Date"
echo "- Adding Version"
echo "- Adding Total Entries"
echo "- Adding Sizes"

# remove tmp file
rm -rf ../*.tmp

# remove extra text
echo "- Removing Extras"
sed -i -e 's/# Total Domains: //g' ../README.md

echo "[+] Done !"

