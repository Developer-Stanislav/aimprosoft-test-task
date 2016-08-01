<?php
namespace library;
class Controller
{
    private $data = array(
        'title' => '',
        'scripts' => array(),
    );
    public $method;

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

    public function index(){
        $this->data['title'] = 'Home Page Tasks';

        $this->data['tasks'] = array();

        $this->data['tasks'][] = array(
            'name' => 'task A',
            'file_main' => 'view/javascript/task_a.js',
            'description' => 'Develop a JavaScript function analogous to the php-function asort().',
            'href' => HTTP_SERVER.'index.php?task=task_a',
        );


        $this->data['header'] = $this->render->get('header',$this->data);
        $this->data['footer'] = $this->render->get('footer');
        echo $this->render->get('home',$this->data);
    }


    public function task_a(){
        $this->data['title'] = 'Task A';
        $this->data['scripts'][] = 'view/javascript/task_a.js';
        $this->data['header'] = $this->render->get('header_no_jquery',$this->data);
        $this->data['footer'] = $this->render->get('footer');
        echo $this->render->get('task_a',$this->data);
    }

    public function error_not_found()
    {

        header("HTTP/1.0 404 Not Found");
        $this->data['title'] = '404 Error';
        $this->data['header'] = $this->render->get('header',$this->data);
        $this->data['footer'] = $this->render->get('footer');
        echo $this->render->get('not_found',$this->data);
    }

}