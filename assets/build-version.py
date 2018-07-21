#!/usr/bin/python3
# -*- coding: utf-8 -*-

# Energized - Magisk Prop Creator

import urllib.request
import datetime
import os
import time

version='../VERSION.md'
header = '../assets/header/header.txt'
rpzheader= '../assets/header/rpz-header.txt'

if not os.path.exists(os.path.dirname(header)):
	os.makedirs(os.path.dirname(header))

with open(header, 'w') as f:
	print('[+] Writing Header...')
	f.write('''# Energized - ad.porn.malware blocking.\n# A merged collection of hosts from reputable sources.\n# https://nayemador.com/energized\n# Project Git: https://github.com/EnergizedProtection/block\n\n# Version: ''' + time.strftime("%y.%m.%j", time.gmtime()) + '''\n# Last updated: {}'''.format(datetime.datetime.now().strftime('%a, %d %b %y %X')))
	f.write('''\n\n''')
	print('[+] Done!')
	
if not os.path.exists(os.path.dirname(rpzheader)):
	os.makedirs(os.path.dirname(rpzheader))

with open(rpzheader, 'w') as f:
	print('[+] Writing Header...')
	f.write('''; Energized - ad.porn.malware blocking.\n; A merged collection of hosts from reputable sources.\n; https://nayemador.com/energized\n; Project Git: https://github.com/EnergizedProtection/block\n\n; Version: ''' + time.strftime("%y.%m.%j", time.gmtime()) + '''\n; Last updated: {}'''.format(datetime.datetime.now().strftime('%a, %d %b %y %X')))
	f.write('''\n$TTL 2h''')
	f.write('''\n@ IN SOA localhost. root.localhost. (1 6h 1h 1w 2h)''')
	f.write('''\n  IN NS  localhost.''')
	f.write('''\n\n''')
	print('[+] Done!')


if not os.path.exists(os.path.dirname(version)):
	os.makedirs(os.path.dirname(version))

with open(version, 'w') as f:
	print('[+] Versioning...')
	print('[+] Writing to file...')
	f.write('''\nName=Energized Protection''')
	f.write('''\nVersion: ''' + time.strftime("%m.%j", time.gmtime()) + '''''')
	f.write('''\nVersion Code=''' + time.strftime("%j", time.gmtime()) + '''''')
	f.write('''\nAuthor=Team Boltz''')
	f.write('''\nDescription=ad.porn.malware blocking.''')
	f.write('''\nllLicense: MIT''')
	print('[+] Done!')