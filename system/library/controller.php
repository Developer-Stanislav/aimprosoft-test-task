<?php
namespace library;
class Controller
{
    public $method;
    private $data = array(
        'title' => '',
        'scripts' => array(),
    );

    public function __construct($registry)
    {
        foreach ($registry->getAll() as $key => $value) {
            $this->$key = $value;
        }
        $method = isset($registry->get('request')->get['task']) ? $registry->get('request')->get['task'] : 'index';
        if (method_exists($this, $method) && $method != '__construct') {
            $this->method = $method;
        } else {
            $this->method = 'error_not_found';
        }
    }

    public function index()
    {
        $this->data['title'] = 'Home Page Tasks';

        $this->data['tasks'] = array();

        $this->data['tasks'][] = array(
            'name' => 'Task "A"',
            'file_main' => 'view/javascript/task_a.js',
            'description' => 'Develop a JavaScript function analogous to the php-function asort().',
            'href' => HTTP_SERVER . 'index.php?task=task_a',
        );

        $this->data['tasks'][] = array(
            'name' => 'Task "B"',
            'file_main' => 'template/tasks/task_b.tpl',
            'description' => "Create a table 10x10 (10 columns and 10 rows). <br/>
            Fill table cells with some texts. Place a form on the page with <br/>
            text input and a checkbox. The text input should be used to find <br/>
            text in the table. Matched text should be highlighted. The checkbox <br/>
            should be used as the switcher, the table rows where the text was <br/>
            found are displayed/highlighted or they aren’t. Solve this task <br/>
            using jQuery. Utilize OOP.",
            'href' => HTTP_SERVER . 'index.php?task=task_b',
        );
        $this->data['tasks'][] = array(
            'name' => 'Task "C"',
            'file_main' => "system/library/controller.php",
            'description' => "<pre><code>" . 'Optimize the following code. Explain what is wrong with it .
$r = mysql_query(\'SELECT * FROM `products` WHERE `category` = "\'.$category.\'"\');
$on_stock = 0;
while ($row = mysql_fetch_assoc($r)) {
    $on_stock = $on_stock + $row[\'on_stock\'];
}
echo \'On stock: \'.$on_stock;' . "</code></pre>",
            'href' => HTTP_SERVER . 'index.php?task=task_c',
        );
        $this->data['tasks'][] = array(
            'name' => 'Task "D"',
            'file_main' => "system/library/controller.php",
            'description' => "<pre><small>There is the table ‘gallery’ in the database, keeping information about photos:
| id (int) | title (varchar) | author (int) | filename (varchar) | reviews (int) |
Return the maximal value of the ratio \"the total quantity of photo reviews of an autor / the total
quantity of photos of this autor\". Utilize OOP, mysqli.</small></pre>",
            'href' => HTTP_SERVER . 'index.php?task=task_d',
        );


        $this->data['tasks'][] = array(
            'name' => 'Task "E"',
            'file_main' => "system/halper/task_e.php<br/>system/halper/config.php<br/>system/halper/task_e_log.txt",
            'description' => "E) On the one bank of the river is a family - father, mother, son and daughter. The family wants to<br/>
get to the other bank of the river. They found a fisherman with a boat who agreed to borrow a boat<br/>
to them. Family should get to another bank of the river and return the boat back to a fisherman.<br/>
Boat can accommodate one adult person or two children.<br/>
Solve this task using php5 (php5.6), utilize OOP. Program should read a configuration from a file,<br/>
in which the number of adults and children may be configured to any other number. Program should<br/>
write a log file with results of its work where anyone could check how people cross the river and<br/>
how many iterations passed.",
            'href' => HTTP_SERVER . 'index.php?task=task_e',
        );


        $this->data['header'] = $this->render->get('common/header', $this->data);
        $this->data['footer'] = $this->render->get('common/footer');
        echo $this->render->get('common/home', $this->data);
    }


    public function task_a()
    {
        $this->data['title'] = 'Task A';
        $this->data['scripts'][] = 'view/javascript/task_a.js';
        $this->data['header'] = $this->render->get('common/header_no_jquery', $this->data);
        $this->data['footer'] = $this->render->get('common/footer');
        echo $this->render->get('tasks/task_a', $this->data);
    }

    public function task_b()
    {
        $this->data['title'] = 'Task B';
        $this->data['table'] = array();
        $text = file_get_contents(DIR_SYSTEM . 'halper/words.txt');
        $text = explode("\n", $text);
        $worlds = array();
        foreach ($text as $str) {
            $str = trim($str);
            if ($str != '') {
                $str = explode(' ', $str);
                foreach ($str as $word) {
                    $word = trim($word);
                    if ($word != '') {
                        $worlds[] = $word;
                    }
                }
            }
        }
        for ($i = 0; $i < 10; $i++) {
            $row = array();
            for ($j = 0; $j < 10; $j++) {
                $row[] = $worlds[rand(0, count($worlds) - 1)];
            }
            $this->data['table'][] = $row;
        }

        $this->data['header'] = $this->render->get('common/header', $this->data);
        $this->data['footer'] = $this->render->get('common/footer');
        echo $this->render->get('tasks/task_b', $this->data);
    }


    public function task_c()
    {
        $this->data['title'] = 'Task C';

        $sql_pre_task = "SELECT DISTINCT(`category`) FROM `products` ORDER BY `category` ASC ";
        $query = $this->db->query($sql_pre_task);
        $this->data['result_old'] = array();
        $time_old = microtime(true);

        foreach ($query->rows as $row) {
            $sql = "SELECT * FROM `products` WHERE `category` = " . (int)$row['category'];
            $query_old = $this->db->query($sql);
            $on_stock = 0;
            foreach ($query_old->rows as $item) {
                $on_stock = $on_stock + $item['on_stock'];
            }
            $this->data['result_old']['values'][] = array(
                'category' => $row['category'],
                'on_stock' => $on_stock,
                'sql' => $sql,
            );
        }
        $time_old = microtime(true) - $time_old;
        $this->data['result_old']['time'] = $time_old;

        $this->data['result'] = array();
        $time = microtime(true);

        foreach ($query->rows as $row) {
            $sql = "SELECT SUM(`on_stock`) as on_stock FROM `products` WHERE `category` = " . (int)$row['category'];
            $query_opt = $this->db->query($sql);
            $this->data['result']['values'][] = array(
                'category' => $row['category'],
                'on_stock' => $query_opt->row['on_stock'],
                'sql' => $sql,
            );
        }

        $time = microtime(true) - $time;
        $this->data['result']['time'] = $time;
        $this->data['header'] = $this->render->get('common/header', $this->data);
        $this->data['footer'] = $this->render->get('common/footer');
        echo $this->render->get('tasks/task_c', $this->data);
    }


    public function task_d()
    {
        /*
         $dir = scandir(DIR_IMAGE.'flags/');
         $result = array();
         foreach ($dir as $item){
             if($item != '..' && $item != '.' ){
                 $file =  DIR_IMAGE.'flags/'.$item;

                 if(is_file($file)){
                     $file_info = pathinfo($file);
                     $result[] = array(
                         'title' => $file_info['filename'],
                         'author' => rand(1,7),
                         'filename' => 'flags/'.$file_info['basename'],
                         'reviews' => rand(0,50)
                     );
                 }
             }
         }
         foreach ($result as $item){
             $sql = "INSERT INTO `gallery` SET `title`='".$this->db->escape($item['title'])."' , `author`= ".(int)$item['author']." , `filename` ='".$this->db->escape($item['filename'])."', `reviews`=".(int)$item['reviews'];
             $this->db->query($sql);
         }


        */

        $this->data['title'] = 'Task D';
        $this->data['max'] = array();
        $this->data['rows'] = array();
        $this->data['author'] = array();
        if (isset($this->request->get['author'])) {
            $author_id = $this->request->get['author'];
            $sql1 = "SELECT MAX(`reviews`) / COUNT(`author`) AS ratio , `author`, MAX(`reviews`) as reviews FROM `gallery` WHERE `author` =  " . (int)$author_id;
            $query_max = $this->db->query($sql1);
            $this->data['max'] = $query_max->row;
            $this->data['max']['sql'] = $sql1;
            $sql2 = "SELECT * FROM `gallery` WHERE `author` = " . (int)$query_max->row['author'] . " AND `reviews`=" . (int)$query_max->row['reviews'];
            $query_strings = $this->db->query($sql2);
            $this->data['rows'] = $query_strings->rows;
            $this->data['rows_sql'] = $sql2;
        } else {
            $sql = "SELECT DISTINCT(`author`) as author FROM `gallery` ORDER BY `author` ASC";
            $query = $this->db->query($sql);
            foreach ($query->rows as $row) {
                $this->data['author'][] = $row['author'];
            }
            $this->data['author_sql'] = $sql;
        }
        $this->data['header'] = $this->render->get('common/header', $this->data);
        $this->data['footer'] = $this->render->get('common/footer');
        echo $this->render->get('tasks/task_d', $this->data);
    }


    public function task_e()
    {
        require_once DIR_SYSTEM . 'halper/task_e.php';
        $this->data['title'] = 'Task E';
        $task = new TaskE();
        $this->data['log'] = $task->getLog();
        $this->data['header'] = $this->render->get('common/header', $this->data);
        $this->data['footer'] = $this->render->get('common/footer');
        echo $this->render->get('tasks/task_e', $this->data);
    }

    public function error_not_found()
    {
        header("HTTP/1.0 404 Not Found");
        $this->data['title'] = '404 Error';
        $this->data['header'] = $this->render->get('common/header', $this->data);
        $this->data['footer'] = $this->render->get('common/footer');
        echo $this->render->get('common/not_found', $this->data);
    }

}