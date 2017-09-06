# Minimal Icinga2 Server Vagrantfile

Minimal Vagrantfile to test Icinga2 on Debian using a specific version (see Vagrantfile).

Usage:

```bash
vagrant up
```

## Test Icinga2 API

Get Icinga2 API password first:

```
$ vagrant ssh -c "sudo cat /etc/icinga2/conf.d/api-users.conf"
/**
 * The APIUser objects are used for authentication against the API.
 */
object ApiUser "root" {
  password = "e50ba53a59e02c13"
  // client_cn = ""

  permissions = [ "*" ]
}
Connection to 127.0.0.1 closed.
```

Test API using credentials above:

```bash
$ curl -k -s -u root:e50ba53a59e02c13 -H 'Accept: application/json' 'https://localhost:5665/v1/objects/downtimes'
```

