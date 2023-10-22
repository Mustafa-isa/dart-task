void main(){
 Function callback  =(e,b) => e+b; 
 var list  =[1,2,3,4,5];
 custom_reducer(list, callback, 16);
}
custom_reducer (list ,Function callbcak ,accsl){
  dynamic result =0; 
for(var i =0 ;i < list.length ;i++){
result +=  callbcak(list[i] ,list[i]);
}
print(result);
}