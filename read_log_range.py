#!/usr/bin/env python
import datetime as dt
import sys

def convert_to_seconds(timestring):
    year = str(dt.date.today().year)
    dtobj = dt.datetime.strptime( year + ' ' + timestring , '%Y %b %d %H:%M:%S' )
    return int(dtobj.strftime('%s'))

beginning = convert_to_seconds(sys.argv[1])
ending = convert_to_seconds(sys.argv[2])

with open(sys.argv[3]) as log:
    for line in log:
        logstamp = " ".join(line.strip().split()[0:3])
        s_logstamp = convert_to_seconds(logstamp)
        if s_logstamp < beginning: continue
        if s_logstamp >= beginning and s_logstamp <= ending:
            print(line.strip())
            sys.stdout.flush()
        if s_logstamp > ending: break
       
