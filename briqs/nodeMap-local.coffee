# this is still used for parsing logs which do not include announcer packets
# TODO: needs to be time-dependent, since the config can change over time
exports.rf12nodes = 
  212:
    1: 'tempNode'
    2: 'momCave'

exports.rf12default =
    recvid: 1
    group: 212
    band: 915

exports.locations =
  'RF12:212:1': title: 'box'
  'RF12:212:2': title: 'momCave'
