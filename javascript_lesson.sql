insert into lessons (subject, title, content) values (
  'JavaScript',
  'JavaScript програмчлалын хэл - Анхан шатнаас ахисан шат хүртэл',
  $$JavaScript бол вэб хөгжүүлэлтийн үндсэн хэлнүүдийн нэг бөгөөд 1995 онд Брендан Айк бүтээсэн. Өнөөдөр JavaScript нь зөвхөн browser дээр биш, серверийн тал (Node.js), мобайл апп, десктоп апп зэрэг бүх платформ дээр ажилладаг универсал хэл болсон.

=== АНХАН ШАТ ===

1. JavaScript эхлэх

JavaScript кодыг HTML файл дотор бичиж болно:

<script>
  console.log("Сайн байна уу, дэлхий!");
</script>

Эсвэл тусдаа .js файлд бичээд холбоно:

<script src="app.js"></script>

Browser-ийн Console (F12) дээр шууд JavaScript код бичиж турших боломжтой.

2. Хувьсагч зарлах

JavaScript дээр хувьсагч зарлах 3 арга бий:

let нэр = "Бат";        // Өөрчилж болно
const PI = 3.14159;      // Өөрчилж болохгүй (тогтмол)
var хуучин = "бүү хэрэглэ";  // Хуучин арга, одоо let/const ашиглана

Өгөгдлийн төрлүүд:
- String: "Сайн байна уу" эсвэл 'текст'
- Number: 42, 3.14 (бүхэл ба бутархай ялгаагүй)
- Boolean: true, false
- null: хоосон утга
- undefined: тодорхойлогдоогүй
- Object: { нэр: "Бат", нас: 20 }
- Array: [1, 2, 3, 4, 5]
- Symbol: Symbol("id")
- BigInt: 9007199254740991n

3. Оператор ба илэрхийлэл

Арифметик: + - * / % **
Харьцуулах: === (төрөл ижил), !== , > , < , >= , <=
Логик: && (ба), || (эсвэл), ! (үгүйсгэл)
Нөхцөлт: condition ? "үнэн" : "худал"

Чухал: == биш === ашиглах (strict equality)

console.log(5 == "5");   // true (муу)
console.log(5 === "5");  // false (зөв)

4. Нөхцөлт илэрхийлэл

let нас = 20;

if (нас < 13) {
  console.log("Хүүхэд");
} else if (нас < 18) {
  console.log("Өсвөр нас");
} else if (нас < 65) {
  console.log("Насанд хүрсэн");
} else {
  console.log("Ахмад");
}

Switch statement:

let өдөр = "Даваа";
switch (өдөр) {
  case "Даваа":
    console.log("Ажлын эхний өдөр");
    break;
  case "Баасан":
    console.log("Амралтын өмнөх өдөр");
    break;
  default:
    console.log("Энгийн өдөр");
}

5. Давталт

For давталт:

for (let i = 0; i < 10; i++) {
  console.log(i);
}

While давталт:

let тоо = 0;
while (тоо < 5) {
  console.log(тоо);
  тоо++;
}

For...of (массивын элементүүд):

const жимс = ["алим", "жүрж", "гэзэг"];
for (const ж of жимс) {
  console.log(ж);
}

For...in (объектын түлхүүрүүд):

const хүн = { нэр: "Бат", нас: 25 };
for (const key in хүн) {
  console.log(key + ": " + хүн[key]);
}

6. Функц

Function declaration:

function мэндчилгээ(нэр) {
  return "Сайн байна уу, " + нэр + "!";
}

Function expression:

const нэмэх = function(a, b) {
  return a + b;
};

Arrow function (сумтай функц):

const үржүүлэх = (a, b) => a * b;
const квадрат = x => x * x;

Default параметр:

function сургуулийнДүн(оноо, нийт = 100) {
  return (оноо / нийт) * 100;
}

=== ДУНД ШАТ ===

7. Массив (Array) аргууд

const тоонууд = [5, 2, 8, 1, 9, 3];

тоонууд.push(6);          // Төгсгөлд нэмэх
тоонууд.pop();             // Сүүлийнхийг авах
тоонууд.unshift(0);        // Эхэнд нэмэх
тоонууд.shift();           // Эхнийхийг авах
тоонууд.splice(2, 1);      // Индексээр устгах

Өндөр түвшний аргууд:

const тоо = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

const хоёрДахин = тоо.map(x => x * 2);
const тэгш = тоо.filter(x => x % 2 === 0);
const нийлбэр = тоо.reduce((acc, x) => acc + x, 0);
const олсон = тоо.find(x => x > 5);
const бүгдТэгш = тоо.every(x => x % 2 === 0);
const заримТэгш = тоо.some(x => x % 2 === 0);

Method chaining:

const үрДүн = тоо
  .filter(x => x > 3)
  .map(x => x * 10)
  .reduce((acc, x) => acc + x, 0);

8. Объект (Object)

const оюутан = {
  нэр: "Дорж",
  нас: 21,
  дүнгүүд: [85, 92, 78],
  мэндчилэх() {
    return "Би " + this.нэр;
  }
};

console.log(оюутан.нэр);
console.log(оюутан["нас"]);

Destructuring:

const { нэр, нас } = оюутан;
const [эхний, ...үлдсэн] = оюутан.дүнгүүд;

Spread operator:

const шинэ = { ...оюутан, email: "dorj@mail.com" };
const нэгдсэн = [...массив1, ...массив2];

9. DOM ажиллагаа

Элемент сонгох:

const гарчиг = document.getElementById("title");
const товчнууд = document.querySelectorAll(".btn");
const эхний = document.querySelector(".card");

Элемент өөрчлөх:

гарчиг.textContent = "Шинэ гарчиг";
гарчиг.style.color = "red";
гарчиг.classList.add("active");
гарчиг.classList.toggle("hidden");

Event listener:

const товч = document.querySelector("#myBtn");
товч.addEventListener("click", function(event) {
  console.log("Дарагдлаа!");
});

Элемент үүсгэх:

const шинэDiv = document.createElement("div");
шинэDiv.textContent = "Шинэ элемент";
document.body.appendChild(шинэDiv);

10. Асинхрон програмчлал - Callback ба Promise

Callback:

function өгөгдөлТатах(callback) {
  setTimeout(() => {
    callback("Өгөгдөл ирлээ");
  }, 2000);
}

өгөгдөлТатах((result) => console.log(result));

Promise:

function өгөгдөлТатах() {
  return new Promise((resolve, reject) => {
    setTimeout(() => {
      const амжилттай = true;
      if (амжилттай) {
        resolve("Өгөгдөл ирлээ");
      } else {
        reject("Алдаа гарлаа");
      }
    }, 2000);
  });
}

өгөгдөлТатах()
  .then(data => console.log(data))
  .catch(err => console.error(err));

11. Async/Await

async function хэрэглэгчТатах() {
  try {
    const response = await fetch("https://api.example.com/users");
    const data = await response.json();
    console.log(data);
  } catch (error) {
    console.error("Алдаа:", error);
  }
}

Зэрэгцээ хүсэлтүүд:

async function бүгдТатах() {
  const [users, posts] = await Promise.all([
    fetch("/api/users").then(r => r.json()),
    fetch("/api/posts").then(r => r.json())
  ]);
  console.log(users, posts);
}

12. Класс (Class)

class Амьтан {
  constructor(нэр, нас) {
    this.нэр = нэр;
    this.нас = нас;
  }

  мэдээлэл() {
    return this.нэр + ", " + this.нас + " настай";
  }
}

class Нохой extends Амьтан {
  constructor(нэр, нас, үүлдэр) {
    super(нэр, нас);
    this.үүлдэр = үүлдэр;
  }

  хуцах() {
    return "Хав хав!";
  }
}

const шарик = new Нохой("Шарик", 3, "Лабрадор");
console.log(шарик.мэдээлэл());
console.log(шарик.хуцах());

=== АХИСАН ШАТ ===

13. Closure ба Scope

function тоолуурҮүсгэх() {
  let тоо = 0;
  return {
    нэмэх() { тоо++; return тоо; },
    хасах() { тоо--; return тоо; },
    утга() { return тоо; }
  };
}

const тоолуур = тоолуурҮүсгэх();
console.log(тоолуур.нэмэх()); // 1
console.log(тоолуур.нэмэх()); // 2
console.log(тоолуур.хасах()); // 1

Closure нь функц өөрийн гаднах хувьсагчдыг санах ойд хадгалдаг чадвар юм. Module pattern, data privacy зэрэгт ашиглагдана.

14. Prototype ба Inheritance

JavaScript дээр бүх объект нь prototype chain-ээр холбогдсон байдаг.

const амьтан = {
  амьд: true,
  амьсгалах() {
    console.log("Амьсгалж байна");
  }
};

const нохой = Object.create(амьтан);
нохой.хуцах = function() {
  console.log("Хав!");
};

нохой.амьсгалах(); // prototype-аас удамшсан
нохой.хуцах();

Object.getPrototypeOf(нохой) === амьтан; // true

15. Event Loop ба Microtask

console.log("1");

setTimeout(() => console.log("2"), 0);

Promise.resolve().then(() => console.log("3"));

console.log("4");

// Гаралт: 1, 4, 3, 2
// Microtask (Promise) нь Macrotask (setTimeout)-аас өмнө ажиллана

Event loop-ийн дараалал:
1. Call stack дээрх синхрон код
2. Microtask queue (Promise, queueMicrotask)
3. Macrotask queue (setTimeout, setInterval, I/O)

16. Proxy ба Reflect

const handler = {
  get(target, prop) {
    console.log("Уншиж байна: " + prop);
    return prop in target ? target[prop] : "Байхгүй";
  },
  set(target, prop, value) {
    if (prop === "нас" && value < 0) {
      throw new Error("Нас сөрөг байж болохгүй");
    }
    target[prop] = value;
    return true;
  }
};

const хүн = new Proxy({}, handler);
хүн.нэр = "Бат";
хүн.нас = 25;
console.log(хүн.нэр);     // "Бат"
console.log(хүн.хаяг);    // "Байхгүй"

17. Generator ба Iterator

function* тоонҮүсгэгч(эхлэл, төгсгөл) {
  for (let i = эхлэл; i <= төгсгөл; i++) {
    yield i;
  }
}

const gen = тоонҮүсгэгч(1, 5);
console.log(gen.next()); // { value: 1, done: false }
console.log(gen.next()); // { value: 2, done: false }

for (const тоо of тоонҮүсгэгч(10, 15)) {
  console.log(тоо);
}

Хязгааргүй дараалал:

function* фибоначчи() {
  let a = 0, b = 1;
  while (true) {
    yield a;
    [a, b] = [b, a + b];
  }
}

const fib = фибоначчи();
for (let i = 0; i < 10; i++) {
  console.log(fib.next().value);
}

18. WeakMap, WeakSet ба Санах ойн удирдлага

const cache = new WeakMap();

function хүнд_тооцоолол(obj) {
  if (cache.has(obj)) {
    return cache.get(obj);
  }
  const үрДүн = /* хүнд тооцоолол */ obj.утга * 2;
  cache.set(obj, үрДүн);
  return үрДүн;
}

WeakMap нь түлхүүр объект устгагдахад автоматаар цэвэрлэгдэнэ - санах ойн алдагдлаас сэргийлнэ.

19. Module систем

// math.js
export const PI = 3.14159;
export function нэмэх(a, b) { return a + b; }
export default class Тооцоолуур {
  static үржүүлэх(a, b) { return a * b; }
}

// app.js
import Тооцоолуур, { PI, нэмэх } from "./math.js";

console.log(PI);
console.log(нэмэх(2, 3));
console.log(Тооцоолуур.үржүүлэх(4, 5));

Dynamic import:

async function модульТатах() {
  const module = await import("./heavy-module.js");
  module.ажиллуулах();
}

20. Design Patterns

Observer Pattern:

class EventEmitter {
  constructor() {
    this.events = {};
  }

  on(event, listener) {
    if (!this.events[event]) this.events[event] = [];
    this.events[event].push(listener);
  }

  emit(event, ...args) {
    if (this.events[event]) {
      this.events[event].forEach(listener => listener(...args));
    }
  }

  off(event, listener) {
    if (this.events[event]) {
      this.events[event] = this.events[event].filter(l => l !== listener);
    }
  }
}

const emitter = new EventEmitter();
emitter.on("мэдэгдэл", (msg) => console.log("Ирсэн:", msg));
emitter.emit("мэдэгдэл", "Шинэ захиалга!");

Дүгнэлт: JavaScript бол вэбийн үндсэн хэл бөгөөд browser-аас сервер хүртэл бүх давхаргад ашиглагддаг. Анхан шатнаас эхлээд closure, prototype, async, generator зэрэг ахисан ойлголтуудыг эзэмшсэнээр бүрэн чадварлаг JavaScript хөгжүүлэгч болох боломжтой.$$
);
