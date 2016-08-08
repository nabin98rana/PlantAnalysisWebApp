function PlantService(){
    
    var plantList=[];
    return{
        getAll:function(Plant){
            return plantList;
        },
        insert:function(Plant){
           plantList.push(plant);
        },
        count:function(){
            plantList.length;
        }
    }
}