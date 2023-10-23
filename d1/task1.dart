void main(){
  var list  = [1,2,3,4,5];
  Function callback= (e){
    return e+2; 
  };  
print(custumer_Mapper(list, callback ,true));

}
 custumer_Mapper(list ,Function callback ,[value = true]){
   
if(value == false){
  return list; 
}else{
 
  for(var i = 0; i < list.length ;i++){
    list[i] =callback(list[i]);
  }
   
}
return list; 
}