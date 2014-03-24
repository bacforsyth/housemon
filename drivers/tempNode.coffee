
module.exports =

  #announcer: 99

  descriptions:
    temp:
      title: 'Temperature'
      unit: 'C'
      min: -50
      max: 50
      scale: 1

  feed: 'rf12.packet'

  decode: (raw, cb) ->
    t = raw.readInt16LE(1, true) 
    console.info "temp node temp value: ", t
    cb
      temp: t
      # temp from -512 (e.g. 51.2) --> +511 (e.g. 51.1) supported by roomNode sketch. NB 512 will be incorrectly reported!

