-- HTML Дунд шат
INSERT INTO quizzes (subject, level, question, options, answer) VALUES
('HTML', 'Дунд шат', 'HTML5-д semantic tag аль нь вэ?', ARRAY['<div>', '<span>', '<article>', '<b>'], '<article>'),
('HTML', 'Дунд шат', '<figure> тагийн зориулалт юу вэ?', ARRAY['Хүснэгт үүсгэх', 'Зураг болон тайлбарыг бүлэглэх', 'Формын элемент', 'Линк үүсгэх'], 'Зураг болон тайлбарыг бүлэглэх'),
('HTML', 'Дунд шат', 'localStorage болон sessionStorage-ийн ялгаа юу вэ?', ARRAY['localStorage нь session дуусахад устдаг', 'sessionStorage нь tab хаахад устдаг', 'Хоёулаа ижил', 'sessionStorage илүү их өгөгдөл хадгална'], 'sessionStorage нь tab хаахад устдаг'),
('HTML', 'Дунд шат', '<meta viewport> тагийн зориулалт юу вэ?', ARRAY['SEO сайжруулах', 'Responsive дизайн тохируулах', 'CSS холбох', 'JavaScript ачаалах'], 'Responsive дизайн тохируулах'),
('HTML', 'Дунд шат', 'HTML form-д enctype="multipart/form-data" хэзээ ашигладаг вэ?', ARRAY['Текст илгээхэд', 'Файл upload хийхэд', 'JSON илгээхэд', 'GET хүсэлтэд'], 'Файл upload хийхэд'),
('HTML', 'Дунд шат', '<datalist> тагийн зориулалт юу вэ?', ARRAY['Өгөгдлийн сан үүсгэх', 'Input-д сонголтын жагсаалт санал болгох', 'Хүснэгт үүсгэх', 'Жагсаалт харуулах'], 'Input-д сонголтын жагсаалт санал болгох'),
('HTML', 'Дунд шат', 'defer ба async атрибутын ялгаа юу вэ?', ARRAY['defer нь HTML parse дуусмагц ажиллана, async нь татаж дуусмагц ажиллана', 'Хоёулаа ижил', 'async нь удаан ажилладаг', 'defer нь зөвхөн CSS-д ашиглагддаг'], 'defer нь HTML parse дуусмагц ажиллана, async нь татаж дуусмагц ажиллана'),
('HTML', 'Дунд шат', 'Canvas элемент юу хийдэг вэ?', ARRAY['Хүснэгт зурах', 'JavaScript-ээр 2D график зурах', 'Видео тоглуулах', 'Аудио тоглуулах'], 'JavaScript-ээр 2D график зурах'),
('HTML', 'Дунд шат', 'ARIA атрибутын зориулалт юу вэ?', ARRAY['SEO сайжруулах', 'Хөгжлийн бэрхшээлтэй хүмүүст хүртээмжтэй болгох', 'CSS загвар нэмэх', 'JavaScript холбох'], 'Хөгжлийн бэрхшээлтэй хүмүүст хүртээмжтэй болгох'),
('HTML', 'Дунд шат', '<template> тагийн онцлог юу вэ?', ARRAY['Шууд render хийгддэг', 'Хуудас ачаалахад харагддаггүй, JS-ээр clone хийж ашигладаг', 'Зөвхөн CSS-д ашиглагддаг', 'Form-д ашиглагддаг'], 'Хуудас ачаалахад харагддаггүй, JS-ээр clone хийж ашигладаг');

-- CSS Дунд шат
INSERT INTO quizzes (subject, level, question, options, answer) VALUES
('CSS', 'Дунд шат', 'Flexbox-д align-items ба justify-content-ийн ялгаа юу вэ?', ARRAY['Хоёулаа хэвтээ чиглэл', 'align-items босоо, justify-content хэвтээ чиглэл', 'Хоёулаа босоо чиглэл', 'Ялгаагүй'], 'align-items босоо, justify-content хэвтээ чиглэл'),
('CSS', 'Дунд шат', 'CSS Grid-д grid-template-columns: repeat(3, 1fr) юу хийдэг вэ?', ARRAY['3 мөр үүсгэнэ', '3 ижил өргөнтэй багана үүсгэнэ', '3 пиксел өргөн тавина', 'Давталт хийнэ'], '3 ижил өргөнтэй багана үүсгэнэ'),
('CSS', 'Дунд шат', 'position: sticky хэрхэн ажилладаг вэ?', ARRAY['Дэлгэцэнд бэхлэгддэг', 'Scroll хийхэд тодорхой цэгт бэхлэгддэг', 'Элементийг нуудаг', 'Абсолют байрлал авна'], 'Scroll хийхэд тодорхой цэгт бэхлэгддэг'),
('CSS', 'Дунд шат', 'z-index ажиллахын тулд юу шаардлагатай вэ?', ARRAY['display: block', 'position нь static-аас өөр байх', 'float: left', 'margin: auto'], 'position нь static-аас өөр байх'),
('CSS', 'Дунд шат', 'CSS transition ба animation-ий ялгаа юу вэ?', ARRAY['Ижил зүйл', 'transition нь trigger шаарддаг, animation автоматаар ажиллана', 'animation удаан', 'transition илүү хүчтэй'], 'transition нь trigger шаарддаг, animation автоматаар ажиллана'),
('CSS', 'Дунд шат', ':nth-child(2n) селектор юу сонгодог вэ?', ARRAY['Эхний элемент', 'Тэгш дугаартай элементүүд', 'Сондгой элементүүд', '2 дахь элемент'], 'Тэгш дугаартай элементүүд'),
('CSS', 'Дунд шат', 'CSS custom properties (variables) хэрхэн зарладаг вэ?', ARRAY['$color: red', '--color: red', '@color: red', 'var color = red'], '--color: red'),
('CSS', 'Дунд шат', 'clamp() функц юу хийдэг вэ?', ARRAY['Элементийг нуудаг', 'Хамгийн бага, зохимжтой, хамгийн их утгыг тогтооно', 'Өнгө өөрчилдөг', 'Зөвхөн font-size-д ажилладаг'], 'Хамгийн бага, зохимжтой, хамгийн их утгыг тогтооно'),
('CSS', 'Дунд шат', 'Media query-д prefers-color-scheme юу хийдэг вэ?', ARRAY['Дэлгэцийн хэмжээ шалгана', 'Хэрэглэгчийн dark/light mode сонголтыг шалгана', 'Принтерт зориулна', 'Хөтчийг шалгана'], 'Хэрэглэгчийн dark/light mode сонголтыг шалгана'),
('CSS', 'Дунд шат', 'BEM нэршлийн арга зүй гэж юу вэ?', ARRAY['Block, Element, Modifier', 'Big, Easy, Modern', 'Build, Export, Minify', 'Border, Edge, Margin'], 'Block, Element, Modifier');

-- Python Дунд шат
INSERT INTO quizzes (subject, level, question, options, answer) VALUES
('Python', 'Дунд шат', 'List comprehension-ий зөв бичиглэл аль нь вэ?', ARRAY['[x for x in range(10)]', 'for x in range(10): [x]', '[for x in range(10) x]', 'list(x for x range(10))'], '[x for x in range(10)]'),
('Python', 'Дунд шат', 'Python дээр decorator юу хийдэг вэ?', ARRAY['Хувьсагч зарлана', 'Функцийг өөр функцээр ороож нэмэлт функционал нэмнэ', 'Class үүсгэнэ', 'Loop ажиллуулна'], 'Функцийг өөр функцээр ороож нэмэлт функционал нэмнэ'),
('Python', 'Дунд шат', 'try-except блокод finally юу хийдэг вэ?', ARRAY['Зөвхөн алдаа гарахад ажиллана', 'Алдаа гарсан ч гараагүй ч заавал ажиллана', 'Програмыг зогсооно', 'Алдааг нууна'], 'Алдаа гарсан ч гараагүй ч заавал ажиллана'),
('Python', 'Дунд шат', '*args ба **kwargs-ийн ялгаа юу вэ?', ARRAY['Ижил зүйл', '*args нь tuple, **kwargs нь dictionary хэлбэрээр аргументуудыг хүлээн авна', '*args нь string, **kwargs нь list', 'Хоёулаа list'], '*args нь tuple, **kwargs нь dictionary хэлбэрээр аргументуудыг хүлээн авна'),
('Python', 'Дунд шат', 'Lambda функц гэж юу вэ?', ARRAY['Урт функц', 'Нэргүй нэг мөрт функц', 'Class-ийн метод', 'Import хийсэн функц'], 'Нэргүй нэг мөрт функц'),
('Python', 'Дунд шат', 'Dictionary-д .get() ба [] хандалтын ялгаа юу вэ?', ARRAY['Ижил', '.get() нь key олдохгүй бол None буцаана, [] нь KeyError өгнө', '[] нь удаан', '.get() нь зөвхөн string-д ажиллана'], '.get() нь key олдохгүй бол None буцаана, [] нь KeyError өгнө'),
('Python', 'Дунд шат', 'Generator функц ямар түлхүүр үг ашигладаг вэ?', ARRAY['return', 'yield', 'generate', 'output'], 'yield'),
('Python', 'Дунд шат', '__init__ метод юу хийдэг вэ?', ARRAY['Класс устгадаг', 'Объект үүсэхэд автоматаар дуудагдаж, анхны утга оноодог', 'Хэвлэдэг', 'Import хийдэг'], 'Объект үүсэхэд автоматаар дуудагдаж, анхны утга оноодог'),
('Python', 'Дунд шат', 'map() функц юу хийдэг вэ?', ARRAY['Dictionary үүсгэнэ', 'Жагсаалтын элемент бүрд функц хэрэглэнэ', 'Файл уншина', 'Хэвлэнэ'], 'Жагсаалтын элемент бүрд функц хэрэглэнэ'),
('Python', 'Дунд шат', 'Virtual environment юунд хэрэгтэй вэ?', ARRAY['Код хурдан ажиллуулах', 'Төсөл бүрийн хамаарлыг тусгаарлах', 'Интернет холболт', 'Файл шифрлэх'], 'Төсөл бүрийн хамаарлыг тусгаарлах');

-- JavaScript Дунд шат
INSERT INTO quizzes (subject, level, question, options, answer) VALUES
('JavaScript', 'Дунд шат', 'Promise-ийн 3 төлөв аль нь вэ?', ARRAY['start, middle, end', 'pending, fulfilled, rejected', 'open, closed, error', 'new, old, done'], 'pending, fulfilled, rejected'),
('JavaScript', 'Дунд шат', 'async/await юу хийдэг вэ?', ARRAY['Синхрон код бичнэ', 'Асинхрон кодыг синхрон маягаар бичих боломж олгоно', 'Сервер үүсгэнэ', 'DOM өөрчилнө'], 'Асинхрон кодыг синхрон маягаар бичих боломж олгоно'),
('JavaScript', 'Дунд шат', 'closure гэж юу вэ?', ARRAY['Функцийг хаах', 'Дотоод функц нь гадаад функцийн хувьсагчид хандах боломж', 'Array метод', 'DOM элемент'], 'Дотоод функц нь гадаад функцийн хувьсагчид хандах боломж'),
('JavaScript', 'Дунд шат', 'spread operator (...) юу хийдэг вэ?', ARRAY['Тоо үржүүлнэ', 'Array/Object-ийг задалж тараана', 'Функц зогсооно', 'String холбоно'], 'Array/Object-ийг задалж тараана'),
('JavaScript', 'Дунд шат', 'map() ба forEach()-ийн ялгаа юу вэ?', ARRAY['Ижил', 'map() шинэ array буцаана, forEach() юу ч буцаахгүй', 'forEach() хурдан', 'map() зөвхөн тоонд ажиллана'], 'map() шинэ array буцаана, forEach() юу ч буцаахгүй'),
('JavaScript', 'Дунд шат', 'event bubbling гэж юу вэ?', ARRAY['Event дээрээс доошоо дамжина', 'Event доороос дээшээ эцэг элемент рүү дамжина', 'Event устгагдана', 'Event давтагдана'], 'Event доороос дээшээ эцэг элемент рүү дамжина'),
('JavaScript', 'Дунд шат', 'localStorage-д өгөгдөл хадгалахад ямар формат ашигладаг вэ?', ARRAY['Object шууд', 'String (JSON.stringify ашиглана)', 'Array', 'Number'], 'String (JSON.stringify ашиглана)'),
('JavaScript', 'Дунд шат', 'destructuring assignment юу хийдэг вэ?', ARRAY['Объект устгана', 'Array/Object-оос утгуудыг хувьсагчид шууд задлан оноодог', 'Функц үүсгэнэ', 'Loop ажиллуулна'], 'Array/Object-оос утгуудыг хувьсагчид шууд задлан оноодог'),
('JavaScript', 'Дунд шат', '=== ба == операторын ялгаа юу вэ?', ARRAY['Ижил', '=== нь төрөл болон утгыг хоёуланг шалгана, == зөвхөн утга', '== илүү нарийн', '=== нь удаан'], '=== нь төрөл болон утгыг хоёуланг шалгана, == зөвхөн утга'),
('JavaScript', 'Дунд шат', 'fetch() API ямар өгөгдлийн төрөл буцаадаг вэ?', ARRAY['String', 'JSON', 'Promise', 'Array'], 'Promise');

-- Java Дунд шат
INSERT INTO quizzes (subject, level, question, options, answer) VALUES
('Java', 'Дунд шат', 'Interface ба Abstract class-ийн ялгаа юу вэ?', ARRAY['Ижил зүйл', 'Interface зөвхөн method signature, Abstract class нь хэрэгжүүлэлттэй method-тэй байж болно', 'Abstract class хурдан', 'Interface хуучирсан'], 'Interface зөвхөн method signature, Abstract class нь хэрэгжүүлэлттэй method-тэй байж болно'),
('Java', 'Дунд шат', 'ArrayList ба LinkedList-ийн ялгаа юу вэ?', ARRAY['Ижил', 'ArrayList нь index хандалтанд хурдан, LinkedList нь нэмэх/устгахад хурдан', 'LinkedList илүү их санах ой хэрэглэнэ... тийм ч ялгаагүй', 'ArrayList нь хуучин'], 'ArrayList нь index хандалтанд хурдан, LinkedList нь нэмэх/устгахад хурдан'),
('Java', 'Дунд шат', 'try-with-resources юу хийдэг вэ?', ARRAY['Exception шиднэ', 'AutoCloseable ресурсуудыг автоматаар хаадаг', 'Thread үүсгэнэ', 'Файл уншина'], 'AutoCloseable ресурсуудыг автоматаар хаадаг'),
('Java', 'Дунд шат', 'HashMap ба TreeMap-ийн ялгаа юу вэ?', ARRAY['Ижил', 'HashMap эрэмбэлэхгүй, TreeMap key-гээр эрэмбэлдэг', 'TreeMap хурдан', 'HashMap зөвхөн String хадгална'], 'HashMap эрэмбэлэхгүй, TreeMap key-гээр эрэмбэлдэг'),
('Java', 'Дунд шат', 'Polymorphism гэж юу вэ?', ARRAY['Нэг класс олон удаа үүсэх', 'Нэг интерфэйсийг олон хэлбэрээр хэрэгжүүлэх', 'Хувьсагч зарлах', 'Loop ашиглах'], 'Нэг интерфэйсийг олон хэлбэрээр хэрэгжүүлэх'),
('Java', 'Дунд шат', 'static method-ийн онцлог юу вэ?', ARRAY['Объект үүсгэхгүйгээр класс нэрээр шууд дуудаж болно', 'Зөвхөн нэг удаа дуудагдана', 'Private байх ёстой', 'Заавал void байна'], 'Объект үүсгэхгүйгээр класс нэрээр шууд дуудаж болно'),
('Java', 'Дунд шат', 'Encapsulation гэж юу вэ?', ARRAY['Класс удамшуулах', 'Өгөгдлийг нуун хамгаалж, getter/setter-ээр хандах', 'Олон удаа ажиллуулах', 'Интерфэйс үүсгэх'], 'Өгөгдлийг нуун хамгаалж, getter/setter-ээр хандах'),
('Java', 'Дунд шат', 'equals() ба == ялгаа юу вэ?', ARRAY['Ижил', '== нь reference шалгана, equals() нь утгыг шалгана', 'equals() хурдан', '== нь String-д зориулагдсан'], '== нь reference шалгана, equals() нь утгыг шалгана'),
('Java', 'Дунд шат', 'Collection framework-д Iterator юу хийдэг вэ?', ARRAY['Жагсаалт эрэмбэлнэ', 'Элементүүдийг дараалан нэг нэгээр нь дамжин гарна', 'Элемент нэмнэ', 'Collection устгана'], 'Элементүүдийг дараалан нэг нэгээр нь дамжин гарна'),
('Java', 'Дунд шат', 'throws ба throw-ийн ялгаа юу вэ?', ARRAY['Ижил', 'throw нь exception шидэх, throws нь method-д exception зарлах', 'throws нь catch блокод ашиглагдана', 'throw нь interface-д ашиглагдана'], 'throw нь exception шидэх, throws нь method-д exception зарлах');
