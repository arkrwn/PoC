### Usage
Run :
`bash check.sh [file_contain_list_of_domain]`

Example :

```
$bash check.sh domain.txt

========================[PROCESS STARTED]========================


[PROCESS] : Checking on beta.moadoph.gov.au
[RESULT] :  Please renew your certificate immidiately!

[PROCESS] : Checking on getting-it-together.moadoph.gov.au
[RESULT] :  OK!

========================[PROCESS FINISHED]========================
```

### Domains

Prepare your server list format per line which file content as following :

```
beta.moadoph.gov.au
getting-it-together.moadoph.gov.au

```

save it as text file, I.E : `domain.txt`

note : `It is required empty new line on that file as shown in the example above, if your editor is atom it's created automatically`

### Background
Let's Encrypt announced a bug in their system's CAA checks, which forced them to revoke 3 million certificates on very short notice.
This script allows you to efficiently check affected hosts.

### Who
Written by Arie Kurnaiwan