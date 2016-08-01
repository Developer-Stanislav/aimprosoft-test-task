<?php
namespace library;
class TaskE
{
    private $position = 'left';
    private $log_display = array();
    private $cnt_people_left;
    private $cnt_children_left;
    private $cnt_people_right = 0;
    private $cnt_children_right = 0;
    private $i = 0;


    public function __construct()
    {
        $children = 0;
        $people = 0;
        require DIR_SYSTEM . 'halper/config.php';
        $this->cnt_people_left = $people;
        $this->cnt_children_left = $children;
        $this->go();
    }

    public function getLog()
    {
        return $this->log_display;
    }

    private function go()
    {
        $this->log();
        while ($this->cnt_children_left + $this->cnt_people_left > 0) {
            $this->change();
        }
        $this->log('========================== end ' . date("Y-m-d H:i:s") . ' ===================================');
    }


    private function change()
    {
        if ($this->position == 'left' && $this->cnt_children_left > 1) {
            $this->cnt_children_left -= 2;
            $this->cnt_children_right += 2;
        } elseif ($this->position == 'right' && $this->cnt_children_left == 0) {
            $this->cnt_children_left += 1;
            $this->cnt_children_right -= 1;
        } elseif ($this->cnt_children_right > 0 && $this->cnt_children_left > 0) {
            if ($this->position == 'left') {
                $this->cnt_people_left--;
                $this->cnt_people_right++;
            } else {
                $this->cnt_children_left++;
                $this->cnt_children_right--;
            }
        } else {
            $error = 'Error: The task has no solution!';
            $this->log($error . ' ' . date("Y-m-d H:i:s") . "\n");
            exit('Error: The task has no solution!');
        }
        $this->position = ($this->position == 'left') ? 'right' : 'left';
        $this->i++;
        $this->log();
    }

    private function log($end = false)
    {
        if ($end == false) {
            $log = '';
            for ($i = 0; $i != $this->cnt_people_left; $i++) {
                $log .= 'I';
            }
            for ($i = 0; $i != $this->cnt_children_left; $i++) {
                $log .= 'i';
            }
            if ($this->position == 'left') {
                $log .= ' <=>||    ';
            } elseif ($this->position == 'right') {
                $log .= '    ||<=> ';
            }
            for ($i = 0; $i != $this->cnt_children_right; $i++) {
                $log .= 'i';
            }
            for ($i = 0; $i != $this->cnt_people_right; $i++) {
                $log .= 'I';
            }
            $log .= '  n=' . $this->i;
            $this->log_display['items'][] = array(
                'cpl' => $this->cnt_people_left,
                'ccl' => $this->cnt_children_left,
                'cpr' => $this->cnt_people_right,
                'ccr' => $this->cnt_children_right,
                'position' => $this->position,
                'i' => $this->i,
            );
        } else {
            $log = $end;
            $this->log_display['end'] = $end;
        }
        file_put_contents(DIR_SYSTEM . 'halper/task_e_log.txt', $log . "\n", FILE_APPEND);
    }
}