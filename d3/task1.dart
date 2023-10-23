class Time {
  var houres;
  var minutes;
  var seconds;
  // create class constructor for return class caribles to zero ;
  Time.Empty()
      : houres = 0,
        minutes = 0,
        seconds = 0;
  //

  // create constructor for assign class variables into  user fields ;
  Time(houres, minutes, seconds)
      : assert(
            (0 <= houres && houres <= 24) &&
                (0 <= minutes && minutes <= 59) &&
                (0 <= seconds && seconds <= 59),
            "inputs are not correct"),
        this.houres = houres,
        this.minutes = minutes,
        this.seconds = seconds;

dynamic show_data(){
return  '${this.houres} ,${this.minutes} ,${this.seconds}';
} 
// show method display Time instance properties .
Time operator +(Time other){
  dynamic totalHoures =this.houres + other.houres;
  dynamic totalMinutes  =this.minutes + other.minutes;
  dynamic totalSeconds =this.seconds + other.seconds;



  return Time(totalHoures, totalMinutes, totalSeconds);  
}
Time operator -(int second) {
  int totalSeconds = this.seconds - second;
  if (totalSeconds < 0) {
    totalSeconds += 60;
    this.minutes--;
  }
  int totalMinutes = this.minutes;
  if (totalMinutes < 0) {
    totalMinutes += 60;
    this.houres--;
  }
  int totalHours = this.houres;
  if (totalHours < 0) {
    totalHours += 24;
  }

  return Time(
    totalHours,
    totalMinutes,
    totalSeconds,
  );
}
}
void main(){
  Time t1 = new Time(10, 2  ,10);
  print(t1.show_data());
  Time t3 =new Time(2, 19, 10);
   dynamic  t2=t3 +t3;
   print(t2.houres);
    
t1--;
print(t1.seconds); 
}