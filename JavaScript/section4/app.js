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

// let arr = [23,4,34,65,3];
// console.log(arr.sort());

// const arr = [34,65,31,76,43,98];
// const maxValue = arr.reduce((max,currValue) => {
//     return currValue>max ? currValue : max;
// });
// console.log(maxValue);

// const votes = ['y', 'y', 'n', 'y', 'n', 'n', 'y', 'n'];

// const result = votes.reduce((tally, val)=>{
//     if(tally[val]){
//         tally[val]++;
//     }
//     else{
//         tally[val]=1;
//     }
//     return tally
// }, {});
// console.log(result);

// const nums  = [12,23,12,4,23,7,34];
// console.log(Math.max(...nums));
// console.log(...nums);

// const obj1 = {a:1, b:2, c:3};
// const obj2 = {...obj1, d:4};
// console.log(obj2);

// console.log({..."sahil khan"});

// function display(a,b){
//     console.log(arguments);
// }
// display(2,3);

// function add(a,b,...nums){
//     console.log(nums);
// }
// const numbers = [1,2,3,4,5];
// add(...numbers);

// const nums = [1,2,3,4,5,6];
// const [a,b,c,...d] = nums;
// console.log(d);

// const library = {
//     name: "My Library",
//     location: "Cityville",
//     books: [
//       {
//         title: "Book 1",
//         author: {
//           name: "Author 1",
//           nationality: "Nationality 1",
//         },
//         genre: "Genre 1",
//       },
//       {
//         title: "Book 2",
//         author: {
//           name: "Author 2",
//           nationality: "Nationality 2",
//         },
//         genre: "Genre 2",
//       },
//       {
//         title: "Book 3",
//         author: {
//           name: "Author 1",
//           nationality: "Nationality 1",
//         },
//         genre: "Genre 1",
//       },
//     ],
//   };

//   console.log(library);

// function display({name:libraryName,books:[{title:title1},{title:title2},{title:title3}]}){
//     console.log(libraryName);
//     console.log(title1, title2, title3);
// }

// display(library)

// const add = function(a,b){
//     return a+b;
// }

// const mul = function(a,b){
//     return a*b;
// }

// const math = {
//     add,
//     mul,
//     nums:[1,2],
// }
// console.log(math.add(...math['nums']));

// console.log(this);

// function display(){
//     console.log(this);
// }

// const obj1 = {
//     firstName:'sahil',
//     lastName:'khan',
//     show(){
//         console.log(this);
//     }
// }

// const show = obj1.show;
// show();

// const test = {
//     name: 'sahil',
//     print(){
//         console.log(this.name);
//     },
//     start(){
//         setTimeout(()=>{
//             this.print();
//         }, 2000);
//     }
// };
// test.start();

// ----------------------------------------
// deck game
const myDeck = {
  deck: [],
  suits: ["spades", "hearts", "diamonds", "clubs"],
  values: "2,3,4,5,6,7,8,9,10,J,Q,K,A",
  player1Drawn: [],
  player2Drawn: [],
  intializeDeck: function () {
    for (let suit of this.suits) {
      for (let value of this.values.split(",")) {
        this.deck.push({
          value,
          suit,
        });
      }
    }
  },
  shuffleDeck: function () {
    for (let i = 0; i < this.deck.length; i++) {
      let index = Math.floor(Math.random() * 52);
      [this.deck[i], this.deck[index]] = [this.deck[index], this.deck[i]];
    }
  },
  drawPlayer1Card: function () {
    this.player1Drawn.push(this.deck.pop());
  },
  drawPlayer2Card: function () {
    this.player2Drawn.push(this.deck.pop());
  },
  startGame: function () {
    this.intializeDeck();
    this.shuffleDeck();
    this.drawPlayer1Card();
    this.drawPlayer2Card();
    this.drawPlayer1Card();
    this.drawPlayer2Card();
    this.drawPlayer1Card();
    this.drawPlayer2Card();
    console.log(this.player1Drawn);
    console.log(this.player2Drawn);
  },
};

myDeck.startGame();
