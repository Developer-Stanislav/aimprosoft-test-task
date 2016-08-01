<?php echo $header; ?>
<h1>View page source.s</h1>
<p>Task "A" main code in view/javascript/task_a.js</p>
<p>Example in this Page!</p>
<script type="text/javascript"><!--
    var arr = ['orange', 'banana', 'apple', 'lemon', 'mango'];
    var obj = {
        a: 'orange',
        b: 'banana',
        c: 'apple',
        d: 'lemon',
        e: 'mango'
    };
    arr = js_asort(arr);        console.log(arr);
    //Я не нашел способа для сортировки нумерованного масива в JS сохраняя ключи
    //Object { 2: "apple"}
    //Object { 1: "banana", 2: "apple"}
    //Object { 1: "banana", 2: "apple", 3: "lemon"}
    //Object { 1: "banana", 2: "apple", 3: "lemon", 4: "mango"}
    //Object { 0: "orange", 1: "banana", 2: "apple", 3: "lemon", 4: "mango"}


    obj = js_asort(obj);            console.log(obj); //Object { c: "apple", b: "banana", d: "lemon", e: "mango", a: "orange"}
    obj = js_asort(obj, false);     console.log(obj); //Object { c: "apple", b: "banana", d: "lemon", e: "mango", a: "orange"}
    obj = js_asort(obj, 'ASC');     console.log(obj); //Object { c: "apple", b: "banana", d: "lemon", e: "mango", a: "orange"}
    obj = js_asort(obj, true);      console.log(obj); //Object { a: "orange", e: "mango", d: "lemon", b: "banana", c: "apple"}
    obj = js_asort(obj, 'DESC');    console.log(obj); //Object { a: "orange", e: "mango", d: "lemon", b: "banana", c: "apple"}

    //--></script>

<?php echo $footer; ?>