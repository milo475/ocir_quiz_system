insert into lessons (subject, title, content) values (
  'Python',
  'Python програмчлалын хэл - Анхан шатнаас ахисан шат хүртэл',
  $$Python програмчлалын хэл нь 1991 онд Гвидо ван Россум бүтээсэн, энгийн бөгөөд хүчирхэг програмчлалын хэл юм. Өнөөдөр дэлхийн хамгийн алдартай програмчлалын хэлнүүдийн нэг бөгөөд веб хөгжүүлэлт, өгөгдлийн шинжлэх ухаан, хиймэл оюун ухаан, автоматжуулалт зэрэг олон салбарт өргөн ашиглагддаг.

=== АНХАН ШАТ ===

1. Python суулгах ба эхлэх

Python-ыг python.org сайтаас татаж суулгана. Суулгасны дараа terminal эсвэл command prompt дээр python гэж бичээд шалгаж болно. Python интерактив горимд шууд код бичиж турших боломжтой.

print("Сайн байна уу, дэлхий!")

Энэ бол таны анхны Python програм. print() функц нь дэлгэц дээр текст хэвлэдэг.

2. Хувьсагч ба өгөгдлийн төрлүүд

Python дээр хувьсагч зарлахад тусгай түлхүүр үг шаардлагагүй. Утга оноохдоо шууд бичнэ.

ner = "Бат"
nas = 20
undur = 1.75
suraltsaj_baina = True

Үндсэн өгөгдлийн төрлүүд:
- str (текст): "Сайн байна уу"
- int (бүхэл тоо): 42x`
- float (бутархай тоо): 3.14
- bool (үнэн/худал): True, False
- list (жагсаалт): [1, 2, 3]
- dict (толь бичиг): {"нэр": "Бат", "нас": 20}
- tuple (өөрчлөгдөшгүй жагсаалт): (1, 2, 3)
- set (олонлог): {1, 2, 3}

3. Оператор ба илэрхийлэл

Арифметик операторууд: + (нэмэх), - (хасах), * (үржүүлэх), / (хуваах), // (бүхэл хуваах), % (үлдэгдэл), ** (зэрэг)

Харьцуулах операторууд: == (тэнцүү), != (тэнцүү биш), > (их), < (бага), >= (их буюу тэнцүү), <= (бага буюу тэнцүү)

Логик операторууд: and (ба), or (эсвэл), not (үгүйсгэл)

4. Нөхцөлт илэрхийлэл (if/elif/else)

nas = 18
if nas < 13:
    print("Хүүхэд")
elif nas < 18:
    print("Өсвөр нас")
elif nas < 65:
    print("Насанд хүрсэн")
else:
    print("Ахмад")

Python дээр indent (догол) маш чухал - блок бүрийг 4 хоосон зайгаар доголдуулна.

5. Давталт (for, while)

For давталт жагсаалтын элемент бүрээр давтна:

жимс = ["алим", "жүрж", "гэзэг"]
for j in жимс:
    print(j)

Range функц тоон дараалал үүсгэнэ:

for i in range(1, 11):
    print(i)

While давталт нөхцөл үнэн байх хугацаанд давтна:

тоо = 0
while тоо < 5:
    print(тоо)
    тоо += 1

Break ба continue: break давталтыг зогсооно, continue дараагийн давталт руу шилжинэ.

6. Функц

Функц нь дахин ашиглагдах кодын блок юм.

def мэндчилгээ(нэр):
    return f"Сайн байна уу, {нэр}!"

үр_дүн = мэндчилгээ("Бат")
print(үр_дүн)

Default утгатай параметр:

def нэмэх(a, b=0):
    return a + b

*args ба **kwargs олон параметр хүлээн авна:

def нийлбэр(*тоонууд):
    return sum(тоонууд)

print(нийлбэр(1, 2, 3, 4, 5))

=== ДУНД ШАТ ===

7. Жагсаалт (List) ба аргууд

тоонууд = [5, 2, 8, 1, 9]
тоонууд.append(6)       # Төгсгөлд нэмэх
тоонууд.insert(0, 10)   # Байрлалд оруулах
тоонууд.remove(2)       # Утгаар устгах
тоонууд.pop()           # Сүүлийнхийг авах
тоонууд.sort()          # Эрэмбэлэх
тоонууд.reverse()       # Урвуулах

List comprehension - жагсаалт товчоор үүсгэх:

квадрат = [x**2 for x in range(10)]
тэгш = [x for x in range(20) if x % 2 == 0]

Nested list comprehension:

матриц = [[i*3+j for j in range(3)] for i in range(3)]

8. Толь бичиг (Dictionary)

оюутан = {
    "нэр": "Дорж",
    "нас": 21,
    "курс": 3,
    "дүнгүүд": [85, 92, 78]
}

оюутан["email"] = "dorj@email.com"  # Нэмэх
del оюутан["курс"]                    # Устгах

for түлхүүр, утга in оюутан.items():
    print(f"{түлхүүр}: {утга}")

Dictionary comprehension:

квадрат_dict = {x: x**2 for x in range(10)}

9. Файлтай ажиллах

Файл бичих:

with open("мэдээлэл.txt", "w", encoding="utf-8") as f:
    f.write("Эхний мөр\n")
    f.write("Хоёр дахь мөр\n")

Файл унших:

with open("мэдээлэл.txt", "r", encoding="utf-8") as f:
    агуулга = f.read()
    print(агуулга)

with statement нь файлыг автоматаар хаадаг.

10. Алдаа боловсруулах (Exception handling)

try:
    тоо = int(input("Тоо оруулна уу: "))
    үр_дүн = 100 / тоо
    print(f"Үр дүн: {үр_дүн}")
except ValueError:
    print("Тоо оруулна уу!")
except ZeroDivisionError:
    print("Тэг хуваагч байж болохгүй!")
except Exception as e:
    print(f"Алдаа гарлаа: {e}")
finally:
    print("Энэ хэсэг үргэлж ажиллана")

Өөрийн алдааны класс:

class НасныАлдаа(Exception):
    pass

def нас_шалгах(нас):
    if нас < 0:
        raise НасныАлдаа("Нас сөрөг байж болохгүй")

11. Модуль ба сан (Module & Library)

import math
import random
from datetime import datetime, timedelta

print(math.pi)
print(math.sqrt(16))
print(random.randint(1, 100))
print(datetime.now())

Өөрийн модуль үүсгэх - тусдаа .py файлд функцүүдээ бичээд import хийнэ.

# utils.py файл дотор
def тооцоолох(a, b):
    return a + b

# main.py файл дотор
from utils import тооцоолох

12. Объект хандалтат програмчлал (OOP) - Үндэс

class Амьтан:
    def __init__(self, нэр, нас):
        self.нэр = нэр
        self.нас = нас

    def мэдээлэл(self):
        return f"{self.нэр}, {self.нас} настай"

    def дуу_гаргах(self):
        return "..."

class Нохой(Амьтан):
    def __init__(self, нэр, нас, үүлдэр):
        super().__init__(нэр, нас)
        self.үүлдэр = үүлдэр

    def дуу_гаргах(self):
        return "Хав хав!"

миний_нохой = Нохой("Шарик", 3, "Лабрадор")
print(миний_нохой.мэдээлэл())
print(миний_нохой.дуу_гаргах())

=== АХИСАН ШАТ ===

13. Декоратор (Decorator)

Декоратор нь функцийн үйлдлийг өөрчилдөг функц юм.

def цаг_хэмжигч(функц):
    import time
    def wrapper(*args, **kwargs):
        эхлэл = time.time()
        үр_дүн = функц(*args, **kwargs)
        төгсгөл = time.time()
        print(f"{функц.__name__} - {төгсгөл - эхлэл:.4f} секунд")
        return үр_дүн
    return wrapper

@цаг_хэмжигч
def удаан_функц():
    import time
    time.sleep(1)
    return "Дууслаа"

удаан_функц()

14. Генератор (Generator)

Генератор нь санах ойг хэмнэдэг итератор юм. yield түлхүүр үгийг ашиглана.

def фибоначчи(n):
    a, b = 0, 1
    for _ in range(n):
        yield a
        a, b = b, a + b

for тоо in фибоначчи(10):
    print(тоо)

Generator expression:

квадрат_gen = (x**2 for x in range(1000000))

Энэ нь жагсаалтаас ялгаатай нь бүгдийг санах ойд хадгалахгүй, нэг нэгээр үүсгэнэ.

15. Context Manager

class ФайлМенежер:
    def __init__(self, файлын_нэр, горим):
        self.файлын_нэр = файлын_нэр
        self.горим = горим

    def __enter__(self):
        self.файл = open(self.файлын_нэр, self.горим, encoding="utf-8")
        return self.файл

    def __exit__(self, exc_type, exc_val, exc_tb):
        self.файл.close()

with ФайлМенежер("test.txt", "w") as f:
    f.write("Context manager ашиглав")

16. Async програмчлал

import asyncio

async def мэдээлэл_татах(url, хугацаа):
    print(f"{url} татаж эхэллээ...")
    await asyncio.sleep(хугацаа)
    print(f"{url} татаж дууслаа!")
    return f"{url} - өгөгдөл"

async def main():
    даалгаврууд = [
        мэдээлэл_татах("api/users", 2),
        мэдээлэл_татах("api/posts", 1),
        мэдээлэл_татах("api/comments", 3)
    ]
    үр_дүнгүүд = await asyncio.gather(*даалгаврууд)
    for үр_дүн in үр_дүнгүүд:
        print(үр_дүн)

asyncio.run(main())

17. Метакласс ба дескриптор

class Singleton(type):
    _instances = {}
    def __call__(cls, *args, **kwargs):
        if cls not in cls._instances:
            cls._instances[cls] = super().__call__(*args, **kwargs)
        return cls._instances[cls]

class Database(metaclass=Singleton):
    def __init__(self):
        self.connection = "Connected"

db1 = Database()
db2 = Database()
print(db1 is db2)  # True

18. Төрлийн заалт (Type Hints)

from typing import List, Dict, Optional, Tuple

def хайлт(жагсаалт: List[int], зорилт: int) -> Optional[int]:
    for индекс, утга in enumerate(жагсаалт):
        if утга == зорилт:
            return индекс
    return None

def статистик(тоонууд: List[float]) -> Dict[str, float]:
    return {
        "дундаж": sum(тоонууд) / len(тоонууд),
        "хамгийн_их": max(тоонууд),
        "хамгийн_бага": min(тоонууд)
    }

19. Тест бичих (unittest, pytest)

import unittest

class ТооноосШалгах(unittest.TestCase):
    def test_нэмэх(self):
        self.assertEqual(1 + 1, 2)

    def test_хасах(self):
        self.assertEqual(5 - 3, 2)

    def test_тэг_хуваах(self):
        with self.assertRaises(ZeroDivisionError):
            1 / 0

if __name__ == "__main__":
    unittest.main()

20. Дизайн загвар (Design Patterns)

Observer загвар:

class Мэдэгдэл:
    def __init__(self):
        self._бүртгэгчид = []

    def бүртгүүлэх(self, функц):
        self._бүртгэгчид.append(функц)

    def мэдэгдэх(self, мэдээлэл):
        for функц in self._бүртгэгчид:
            функц(мэдээлэл)

мэдэгдэл = Мэдэгдэл()

@мэдэгдэл.бүртгүүлэх
def email_илгээх(мэдээлэл):
    print(f"Email: {мэдээлэл}")

мэдэгдэл.мэдэгдэх("Шинэ захиалга ирлээ!")

Дүгнэлт: Python бол маш уян хатан, хүчирхэг хэл бөгөөд анхан шатнаас эхлээд ахисан шат хүртэл тасралтгүй суралцах боломжийг олгодог. Практик дасгал хийж, жинхэнэ төслүүд дээр ажиллах нь хамгийн сайн суралцах арга юм.$$
);
