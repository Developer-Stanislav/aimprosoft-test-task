<?php echo $header; ?>

<div id="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-offset-2 col-sm-8">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h1 class="panel-title" style="margin: 9px 0 7px 0 ;"><i class="fa fa-tasks"></i> <?php echo $title; ?></h1>
                    </div>
                    <div class="panel-body">
                        <table class="table table-bordered table-hover" id="task_b">

                            <tbody>
                            <?php foreach ($tasks as $task) { ?>
                                <tr>
                                    <td><a href="<?php echo $task['href']; ?>"><?php echo $task['name'];?></a></td>
                                    <td><?php echo $task['file_main']; ?></td>
                                    <td><?php echo $task['description']; ?></td>
                                </tr>
                            <?php } ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<?php echo $footer; ?>
