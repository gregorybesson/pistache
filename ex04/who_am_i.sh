ldapsearch -h "ldap.forumsys.com" -D "uid=tesla,dc=example,dc=com" -w password -b "dc=example,dc=com" -LLL "(uid=tesla)" dn
