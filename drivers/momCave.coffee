
module.exports =

  #announcer: 99

  descriptions:
    outsideTemp:
      title: 'Outside Temperature'
      unit: 'C'
      min: -50
      max: 50
      scale: 1
    insideTemp:
      title: 'Inside Temperature'
      unit: 'C'
      min: 0
      max: 50
      scale: 1
    battery:
      title: 'Battery Voltage'
      unit: 'mV'
      min: 0
      max: 3.3
      factor: 3.3/255
      scale: -2
      

  feed: 'rf12.packet'

  decode: (raw, cb) ->
    # todo: do something with sequence number?
    outsideT = raw.readInt16LE(5, true) 
    insideT = raw.readInt16LE(7, true) 
    #console.info "temp node temp value: ", t
    cb
      outsideTemp: outsideT
      insideTemp: insideT
      battery: raw[8]
