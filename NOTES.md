# Notes

## statusbar script for .xinitrc

```shell
#!/bin/sh

while true; do
      DATE=$(date '+%a  %F  %H:%M:%S')
      CPU=$(mpstat 1 1 | awk '/Average/ {print 100-$NF "%"}')
      RAM=$(free -b | awk '/Mem:/ {printf "%.1fGi\n", $3/1024^3}')
      
      xsetroot -name "  ${DATE}        C:${CPU}  M:${RAM}"

      sleep 5
done
```
