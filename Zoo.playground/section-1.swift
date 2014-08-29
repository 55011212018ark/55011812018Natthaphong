class Animal{

    let name:String
    let food:String
    var nameAni:[String] = ["fox","monkey","camel","chicken"]
    var foodAni:[String] = ["beef","banana","grass","rice"]
    init(name:String,food:String){
        self.name = name
        self.food = food
        
            }
    
    func add() ->String{
            nameAni += name
            foodAni += food
        
            return name+" "+food
        
            }
    
}

 let teatAdd = Animal(name: "rat", food: "corn")
teatAdd.add()

