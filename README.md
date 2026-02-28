# Homeflared
An app to install and run cloudflared on your HA's server. You may have to add 
```yaml
http:
  use_x_forwarded_for: true
  trusted_proxies:
    - 127.0.0.1
    - ::1
``` 
to configuration.yaml
