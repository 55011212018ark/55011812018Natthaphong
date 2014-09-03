class Zoo{

    let name:String
    let food:String
    
    var nameAni:[String] = ["fox","monkey","camel","chicken","elephane","panda"]
    var foodAni:[String] = ["beef","banana","grass","rice","cane","bamboo"]
    init(name:String,food:String){
        self.name = name
        self.food = food
            }
    
    func add(){
            nameAni += name
            foodAni += food
        
        }
    
    func searchAnimal(name:String)->String{
        for(var i=0;i<nameAni.count;i++){
            if(nameAni[i]==name){
                var sting = foodAni[i]
                return "food for "+name+" is "+sting+"."
            }
        }
        return "No Animal on Zoo."
        
        }
}

    


let OnZoo = Zoo(name: "rat" ,food: "corn" )
    OnZoo.add()
    

OnZoo.searchAnimal("fox")
OnZoo.searchAnimal("dog")
OnZoo.searchAnimal("bat")
OnZoo.searchAnimal("panda")
