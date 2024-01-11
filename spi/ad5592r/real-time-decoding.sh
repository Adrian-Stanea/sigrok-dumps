#!/bin/bash

m2kcli digital auto -c buffer_size=500000 format=binary | sigrok-cli -i - -I binary:numchannels=16:samplerate=5mhz -C 0=cs,1=mosi,2=miso,3=clk -P spi:miso=miso:mosi=mosi:clk=clk:cs=cs:cs_polarity=active-low:cpol=1:cpha=0:bitorder=msb-first:wordsize=8,ad5592r -A spi=mosi-data:miso-data,ad5592r=mosi-registers:mosi-fields:miso-registers:miso-fields	