#!/usr/bin/env bash
result=`i3 reload | tail -n 1`
status=`echo $result | jq '.[0].success'`

echo "i3 reload: $result"

if [ $status == 'true' ]; then
  notify-send 'i3' 'Successfully reloaded i3 config.'
else
  notify-send -u critical -t 10000 'i3' "Failed to reload i3 config!\n$(echo $result | jq .[0].message)"
fi

