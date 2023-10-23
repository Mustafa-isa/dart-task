void main(){
var list  =[1,2,2,2,2,6];
 Function callback = (e){
  if(e==2) return true; 
 };
 print(custom_any(list, callback));
 print(custom_somw(list, callback));  
 print(custom_every(list, callback));

}




custom_any(list ,Function callback ){
  var newArray =[];
  for( var i = 0; i < list.length ;i++){
    if(callback(list[i]) ==true){
      newArray.add(list[i]);
    }
  }
  newArray.length > 0 ? print("true"): print("false");   
}
custom_somw(list ,Function callback ){
   var newArray =[];
  for( var i = 0; i < list.length ;i++){
    if(list[i] == callback(list[i])){
      newArray.add(list[i]);
    }
  }
  newArray.length > 2 ?  print("true"): print("false"); 
}
custom_every(list ,Function callback ){
   var newArray =[];
  for( var i = 0; i < list.length ;i++){
    if(list[i] == callback(list[i])){
      newArray.add(list[i]);
    }
  }
  newArray.length == list.length ?print("true"): print("false"); 
}

