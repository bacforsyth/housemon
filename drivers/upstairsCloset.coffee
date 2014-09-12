
module.exports =

  #announcer: 99

  descriptions:
    alexTemp:
      title: 'Alex Bedroom'
      unit: 'C'
      min: 0
      max: 50
      scale: 1
    hugoTemp:
      title: 'Hugo Bedroom'
      unit: 'C'
      min: 0
      max: 50
      scale: 1
    battery:
      title: 'Battery Voltage'
      unit: 'V'
      min: 0
      max: 3.3
      scale: 2
      

  feed: 'rf12.packet'

  decode: (raw, cb) ->
    # todo: do something with sequence number?
    alexT = raw.readInt16LE(5, true) 
    hugoT = raw.readInt16LE(7, true) 
    #console.info "temp node temp value: ", t
    cb
      alexTemp: alexT
      hugoTemp: hugoT
      battery: raw[9]
