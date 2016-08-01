<?php
namespace library;


class Registry
{
    private $data;
    public static $tmp;

    public function get($key = ''){
        if ($key && isset($this->data[$key])) {
            return $this->data[$key];
        } else {
            return NULL;
        }
    }

    public function getAll(){
        return $this->data;
    }

    public function set($key, $value)
    {
        $this->data[$key] = $value;
    }
}