void main(){
  var list  = [1,2,3,4,5];
  Function callback= (e) => e+2;  
print(custumer_Mapper(list, callback ,true));

}
 custumer_Mapper(list ,Function callback ,[value = true]){
   var newArray =[];
if(value == false){
  return list; 
}else{
 
  for(var i = 0; i < list.length ;i++){
    newArray.add(callback(list[i]));
  }
   
}
return newArray; 
}