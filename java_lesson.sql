insert into lessons (subject, title, content) values (
  'Java',
  'Java програмчлалын хэл - Анхан шатнаас ахисан шат хүртэл',
  $$Java бол 1995 онд Sun Microsystems компанийн Жеймс Гослинг бүтээсэн, объект хандалтат програмчлалын хэл юм. "Write Once, Run Anywhere" зарчмаар ажилладаг бөгөөд JVM (Java Virtual Machine) дээр ямар ч үйлдлийн систем дээр ажиллах боломжтой. Өнөөдөр Android апп, enterprise систем, вэб сервер, big data зэрэг салбарт өргөн ашиглагддаг.

=== АНХАН ШАТ ===

1. Java суулгах ба эхлэх

Java хөгжүүлэлтийн орчин (JDK) суулгана. IDE-ээс IntelliJ IDEA эсвэл Eclipse ашиглаж болно. Анхны програм:

public class Main {
    public static void main(String[] args) {
        System.out.println("Сайн байна уу, дэлхий!");
    }
}

Java дээр бүх код class дотор байна. main() метод нь програмын эхлэх цэг юм. Файлын нэр нь class-ийн нэртэй ижил байх ёстой (Main.java).

2. Хувьсагч ба өгөгдлийн төрлүүд

Java бол strongly typed хэл - хувьсагчийн төрлийг заавал зарлана.

int нас = 25;
double өндөр = 1.75;
char үсэг = 'А';
boolean идэвхтэй = true;
String нэр = "Бат";

Primitive төрлүүд:
- byte (8 bit): -128 ~ 127
- short (16 bit): -32768 ~ 32767
- int (32 bit): хамгийн түгээмэл бүхэл тоо
- long (64 bit): том бүхэл тоо
- float (32 bit): бутархай тоо
- double (64 bit): нарийвчлалтай бутархай
- char (16 bit): нэг тэмдэгт
- boolean: true/false

Reference төрлүүд: String, Array, Class, Interface

3. Оператор ба илэрхийлэл

Арифметик: + - * / % ++ --
Харьцуулах: == != > < >= <=
Логик: && || !
Оноох: = += -= *= /=

String харьцуулах:

String a = "hello";
String b = "hello";
System.out.println(a.equals(b));  // true (== биш .equals() ашиглана)

4. Нөхцөлт илэрхийлэл

int оноо = 85;

if (оноо >= 90) {
    System.out.println("A");
} else if (оноо >= 80) {
    System.out.println("B");
} else if (оноо >= 70) {
    System.out.println("C");
} else {
    System.out.println("F");
}

Switch:

int өдөр = 3;
switch (өдөр) {
    case 1: System.out.println("Даваа"); break;
    case 2: System.out.println("Мягмар"); break;
    case 3: System.out.println("Лхагва"); break;
    default: System.out.println("Бусад");
}

5. Давталт

For давталт:

for (int i = 0; i < 10; i++) {
    System.out.println(i);
}

While давталт:

int тоо = 0;
while (тоо < 5) {
    System.out.println(тоо);
    тоо++;
}

Do-while:

int x = 0;
do {
    System.out.println(x);
    x++;
} while (x < 5);

Enhanced for (for-each):

String[] жимс = {"алим", "жүрж", "гэзэг"};
for (String ж : жимс) {
    System.out.println(ж);
}

6. Массив (Array)

int[] тоонууд = {5, 2, 8, 1, 9};
int[] хоосон = new int[10];

System.out.println(тоонууд.length);
System.out.println(тоонууд[0]);

Хоёр хэмжээст массив:

int[][] матриц = {
    {1, 2, 3},
    {4, 5, 6},
    {7, 8, 9}
};

System.out.println(матриц[1][2]);  // 6

7. Метод (функц)

public static int нэмэх(int a, int b) {
    return a + b;
}

public static void мэндчилгээ(String нэр) {
    System.out.println("Сайн байна уу, " + нэр);
}

Method overloading (нэг нэртэй, өөр параметртэй):

public static int нэмэх(int a, int b) { return a + b; }
public static double нэмэх(double a, double b) { return a + b; }
public static int нэмэх(int a, int b, int c) { return a + b + c; }

=== ДУНД ШАТ ===

8. Объект хандалтат програмчлал (OOP)

public class Амьтан {
    private String нэр;
    private int нас;

    public Амьтан(String нэр, int нас) {
        this.нэр = нэр;
        this.нас = нас;
    }

    public String getNэр() { return нэр; }
    public int getNас() { return нас; }

    public String мэдээлэл() {
        return нэр + ", " + нас + " настай";
    }
}

Удамшил (Inheritance):

public class Нохой extends Амьтан {
    private String үүлдэр;

    public Нохой(String нэр, int нас, String үүлдэр) {
        super(нэр, нас);
        this.үүлдэр = үүлдэр;
    }

    @Override
    public String мэдээлэл() {
        return super.мэдээлэл() + ", " + үүлдэр;
    }

    public String хуцах() {
        return "Хав хав!";
    }
}

Encapsulation: private талбар + public getter/setter
Polymorphism: @Override ашиглан дахин тодорхойлох

9. Interface ба Abstract Class

public interface Нисдэг {
    void нисэх();
    default void газардах() {
        System.out.println("Газардаж байна");
    }
}

public abstract class Шувуу {
    abstract String дуугарах();
    public void амьсгалах() {
        System.out.println("Амьсгалж байна");
    }
}

public class Бүргэд extends Шувуу implements Нисдэг {
    @Override
    public void нисэх() {
        System.out.println("Өндөрт нисч байна");
    }

    @Override
    String дуугарах() {
        return "Скрии!";
    }
}

10. Exception Handling

try {
    int[] arr = {1, 2, 3};
    System.out.println(arr[5]);
} catch (ArrayIndexOutOfBoundsException e) {
    System.out.println("Индекс хэтэрлээ: " + e.getMessage());
} catch (Exception e) {
    System.out.println("Алдаа: " + e.getMessage());
} finally {
    System.out.println("Энэ үргэлж ажиллана");
}

Өөрийн exception:

public class НасныАлдаа extends Exception {
    public НасныАлдаа(String мэдэгдэл) {
        super(мэдэгдэл);
    }
}

public static void насШалгах(int нас) throws НасныАлдаа {
    if (нас < 0) throw new НасныАлдаа("Нас сөрөг байж болохгүй");
}

11. Collections Framework

ArrayList:

import java.util.ArrayList;

ArrayList<String> нэрс = new ArrayList<>();
нэрс.add("Бат");
нэрс.add("Дорж");
нэрс.add("Сүхээ");
нэрс.remove("Дорж");
System.out.println(нэрс.size());
System.out.println(нэрс.get(0));

HashMap:

import java.util.HashMap;

HashMap<String, Integer> оноо = new HashMap<>();
оноо.put("Бат", 95);
оноо.put("Дорж", 87);
оноо.put("Сүхээ", 92);

for (var entry : оноо.entrySet()) {
    System.out.println(entry.getKey() + ": " + entry.getValue());
}

HashSet, LinkedList, TreeMap зэрэг бусад collection-ууд бас бий.

12. Generics

public class Хайрцаг<T> {
    private T утга;

    public Хайрцаг(T утга) {
        this.утга = утга;
    }

    public T getУтга() { return утга; }
    public void setУтга(T утга) { this.утга = утга; }
}

Хайрцаг<String> текст = new Хайрцаг<>("Сайн байна");
Хайрцаг<Integer> тоо = new Хайрцаг<>(42);

Generic method:

public static <T extends Comparable<T>> T хамгийнИх(T a, T b) {
    return a.compareTo(b) > 0 ? a : b;
}

=== АХИСАН ШАТ ===

13. Lambda ба Functional Interface

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

List<Integer> тоонууд = Arrays.asList(1, 2, 3, 4, 5, 6, 7, 8, 9, 10);

List<Integer> тэгш = тоонууд.stream()
    .filter(n -> n % 2 == 0)
    .collect(Collectors.toList());

List<Integer> квадрат = тоонууд.stream()
    .map(n -> n * n)
    .collect(Collectors.toList());

int нийлбэр = тоонууд.stream()
    .reduce(0, Integer::sum);

Custom functional interface:

@FunctionalInterface
interface Тооцоолуур {
    int тооцоол(int a, int b);
}

Тооцоолуур нэмэх = (a, b) -> a + b;
Тооцоолуур үржүүлэх = (a, b) -> a * b;
System.out.println(нэмэх.тооцоол(5, 3));

14. Stream API

import java.util.stream.*;

List<String> нэрс = Arrays.asList("Бат", "Дорж", "Болд", "Баяр", "Ганаа");

long тоо = нэрс.stream()
    .filter(n -> n.startsWith("Б"))
    .count();

String нэгдсэн = нэрс.stream()
    .sorted()
    .collect(Collectors.joining(", "));

Optional<String> эхний = нэрс.stream()
    .filter(n -> n.length() > 3)
    .findFirst();

Map<Integer, List<String>> бүлэг = нэрс.stream()
    .collect(Collectors.groupingBy(String::length));

15. Multithreading

Thread үүсгэх:

Thread thread = new Thread(() -> {
    for (int i = 0; i < 5; i++) {
        System.out.println("Thread: " + i);
        try { Thread.sleep(1000); } catch (InterruptedException e) {}
    }
});
thread.start();

ExecutorService:

import java.util.concurrent.*;

ExecutorService executor = Executors.newFixedThreadPool(3);

Future<Integer> future = executor.submit(() -> {
    Thread.sleep(2000);
    return 42;
});

System.out.println("Үр дүн: " + future.get());
executor.shutdown();

Synchronized:

public class Тоолуур {
    private int тоо = 0;

    public synchronized void нэмэх() {
        тоо++;
    }

    public synchronized int getТоо() {
        return тоо;
    }
}

16. Design Patterns

Singleton:

public class Database {
    private static Database instance;

    private Database() {}

    public static synchronized Database getInstance() {
        if (instance == null) {
            instance = new Database();
        }
        return instance;
    }
}

Builder:

public class Хэрэглэгч {
    private final String нэр;
    private final String email;
    private final int нас;

    private Хэрэглэгч(Builder builder) {
        this.нэр = builder.нэр;
        this.email = builder.email;
        this.нас = builder.нас;
    }

    public static class Builder {
        private String нэр;
        private String email;
        private int нас;

        public Builder нэр(String нэр) { this.нэр = нэр; return this; }
        public Builder email(String email) { this.email = email; return this; }
        public Builder нас(int нас) { this.нас = нас; return this; }
        public Хэрэглэгч build() { return new Хэрэглэгч(this); }
    }
}

Хэрэглэгч user = new Хэрэглэгч.Builder()
    .нэр("Бат")
    .email("bat@mail.com")
    .нас(25)
    .build();

17. File I/O ба NIO

import java.nio.file.*;
import java.io.*;

// Файл бичих
Files.writeString(Path.of("test.txt"), "Сайн байна уу!");

// Файл унших
String агуулга = Files.readString(Path.of("test.txt"));

// Бүх мөрүүд
List<String> мөрүүд = Files.readAllLines(Path.of("test.txt"));

// Try-with-resources
try (BufferedReader reader = new BufferedReader(new FileReader("test.txt"))) {
    String мөр;
    while ((мөр = reader.readLine()) != null) {
        System.out.println(мөр);
    }
}

18. Annotation ба Reflection

import java.lang.reflect.*;

@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.METHOD)
public @interface Шалгах {
    String утга() default "";
}

public class Үйлчилгээ {
    @Шалгах(утга = "чухал")
    public void ажиллуулах() {
        System.out.println("Ажиллаж байна");
    }
}

// Reflection ашиглах
Class<?> cls = Үйлчилгээ.class;
for (Method method : cls.getDeclaredMethods()) {
    if (method.isAnnotationPresent(Шалгах.class)) {
        Шалгах annotation = method.getAnnotation(Шалгах.class);
        System.out.println(method.getName() + ": " + annotation.утга());
    }
}

19. Optional ба Null Safety

import java.util.Optional;

Optional<String> нэр = Optional.of("Бат");
Optional<String> хоосон = Optional.empty();

String утга = нэр.orElse("Тодорхойгүй");
нэр.ifPresent(n -> System.out.println("Нэр: " + n));

Optional<Integer> урт = нэр
    .filter(n -> n.length() > 2)
    .map(String::length);

20. Record ба Sealed Class (Java 17+)

public record Цэг(double x, double y) {
    public double зай(Цэг бусад) {
        return Math.sqrt(Math.pow(x - бусад.x, 2) + Math.pow(y - бусад.y, 2));
    }
}

Цэг а = new Цэг(0, 0);
Цэг б = new Цэг(3, 4);
System.out.println(а.зай(б));  // 5.0

Sealed class:

public sealed interface Дүрс permits Тойрог, Тэгш {
}
public record Тойрог(double радиус) implements Дүрс {}
public record Тэгш(double өргөн, double өндөр) implements Дүрс {}

Дүгнэлт: Java бол enterprise түвшний хэл бөгөөд OOP, multithreading, generics, stream API зэрэг хүчирхэг боломжуудтай. Анхан шатнаас ахисан шат хүртэл тууштай суралцсанаар том хэмжээний системүүд бүтээх чадвартай болно.$$
);
