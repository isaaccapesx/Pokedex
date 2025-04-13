
class Pokemon {
   var num: Int
   var name: String
   var type: [String]
   var ability: [String]

   init(num: Int, name: String, type:[String], ability:[String]) {
      self.num = num
      self.name = name
      self.type = type
      self.ability = ability
  } 
  func displayInfo() {
    print("Number = #\(num)")
    print("Name = \(name)")
    print("Type = \(type)")
    print("Ability = \(ability)")
    print("-----------------------------------------")
  }
}

class Gigantamax: Pokemon {
  var location: String

  init(num: Int, name: String, type:[String], ability:[String], location:String) {
      self.location = location
      super.init(num: num, name: name, type: type, ability:ability)
  }

  override func displayInfo(){
    print("Number = #\(num)")
    print("Name = \(name)")
    print("Type = \(type)")
    print("Ability = \(ability)")
    print("Location = \(location)")
    print("-----------------------------------------")
  }
}
 

var Bulbasaur = Pokemon(num:1, name:"Bulbasaur", type:["Grass🌱", "Poison 💀"], ability:["Overgrow"])
var Charmander = Pokemon(num:4, name:"Charmander", type:["Fire🔥"], ability:["Blaze"])
var Squirtle = Pokemon(num:7, name:"Squirtle", type:["Water 💧"], ability:["Torrent"])
var Charizard = Gigantamax(num:6, name:"Charizard",type:["Fire🔥"], ability:["Blaze"],location:"Lake of outrage")

Bulbasaur.displayInfo()
Charmander.displayInfo()
Squirtle.displayInfo()
Charizard.displayInfo()


