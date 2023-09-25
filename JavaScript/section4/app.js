// if(true || console.log("two")){
//     console.log("three");
// }


// let day =3;
// switch(day){

//     case 1: console.log("Mon");

//     default:console.log("invalid");

//     case 2: console.log("Tue");
    
//     case 1: console.log("Mon3");

// }




// let arr = [1];
// arr[2]=2;
// console.log(arr[1]);


// let arr = [1,2,3,4];
// console.log(arr);
// arr.shift();
// console.log(arr);
// arr.pop();
// console.log(arr);


// let arr = [1,2,3,4];
// console.log(arr.splice(1,2,3,4));
// console.log(arr);


// let arr = [2,1,11,4];
// arr.sort();
// console.log(arr);


// const numbers = [11,"gd",2,5,"abc",6,"xyz"];
// // Sort numerically (ascending order)
// numbers.sort((a, b) => a - b);
// console.log(numbers); 


// let arr1 = [1,2,3,4];
// let arr2 = arr1;
// arr1.push(5);
// console.log(arr2);

// if(NaN < 1){
//     console.log(true);
// }
// else{
//     console.log(false);
// }

// let a = "32";
// console.log(!!+a);


// if(console.log(console.log("one") | console.log("two"))){
//     console.log("three");
// }

// const decimalValue = NaN;
// const binaryString = decimalValue.toString(2);
// console.log(binaryString);

// display();
// console.log(a);


// var a = 10;

// function display(){
//   console.log("hello");
// }


// let account = {
//   username: 'sahilkhan',
//   upVotes:20,
//   downVotes:40,
//   tags:['#first', '#second'],
//   isVerified:true,
// }

// console.log(account);

// let guessedNumber;
// while(guessedNumber!=9){
//   guessedNumber = Math.floor(Math.random() * 10) + 1;
//   console.log(guessedNumber);
// }


// function isValidPassword(password, username){
//   if(password.length >= 8 && !(password.includes(username)) && !(password.includes(" "))){
//     return true;
//   }
//   return false;
// }

// console.log(isValidPassword('ssrgfdfds', 'sahil'));
// console.log(isValidPassword('sahil123', 'sahil'));

// function calculateAverage(numbers){
//   let sum=0;
//   for(let number of numbers){
//     sum+=number;
//   }
//   return sum/numbers.length;
// }

// console.log(calculateAverage([1,2,3,4]));

// function checkPangram(str){
//   str=str.toLowerCase();
//   for(ch of "abcdefghijklmnopqrstuvwxyz"){
//     if(str.indexOf(ch) == -1){
//       return false;
//     }
//   }
//   return true;
// }

// console.log(checkPangram('the five boxing wizards jump quickly.'));


// let cards = ['2','3','4','5','6','7','8','9','10','J','Q','K','A'];
// let suits = ['clubs', 'spades', 'hearts', 'diamonds'];

// function getCard(){
//   let randomCard = Math.floor(Math.random() * 13) ;
//   let randomSuit = Math.floor(Math.random() * 4) ;
//   return {
//     value:cards[randomCard],
//     suit:suits[randomSuit]
//   };
// }

// console.log(getCard());
// console.log(getCard());
// console.log(getCard());


// function test(){
//   let a= 10;
//   var b = 15;
//   const c = 20;
//   d = 25;
// }
// test();
// console.log(d);

// function display(){
//   console.log('hello');
// }

// function higher(func, num){
//   for(let i=0; i<num; i++){
//   func();
//   }
// }

// higher(display, 10);



// function multiplyBy(num){
//   return function(x){
//     return num*x;
//   }
// }



// const triple = multiplyBy(3);
// console.log(triple(20));

// const double = multiplyBy(2);
// console.log(double(10));


// let arr = [1,2,3,4,5];
// arr.forEach(function(num){
//     console.log(num*num);
// })

// let arr =  [1,2,3,4,5];
// let newArr = arr.map(function(num){
//     return num*2;
// });
// console.log(newArr);

// const add = function(a,b){
//     return a+b;
// }
// console.log(add(2,3));

// const mul = (a,b) => {
//     return a*b;
// }
// console.log(mul(2,3));

// const divide = (x,y) => x/y;
// console.log(divide(10,2));

// let arr = [1,2,3,4,5];
// console.log(arr.find(num=>{
//     return num>3;
// }));

// let arr = [12,34,23,5,45,65,66,4,65,67];
// let even = arr.filter(num=>{
//     return num%2==0;
// });
// let odd = arr.filter(num=>{
//     return num%2==1;
// });
// console.log(even, odd);

// let arr = [1,3,5,7,11];
// console.log(arr.every(num=>{
//     return num%2==1;
// }));


let arr = [23,4,34,65,3];
console.log(arr.sort());