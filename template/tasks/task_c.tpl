<?php echo $header; ?>

<div id="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-offset-2 col-sm-8">
                <div class="panel panel-default">
                    <div class="panel-heading" >
                        <h1 class="panel-title" style="margin: 9px 0 7px 0 ;"><i class="fa fa-tasks"></i> <?php echo $title; ?></h1>
                    </div>

                    <div class="panel-body">
                        <table class="table table-bordered table-hover" id="task_b">
                        <thead>
                        <tr>
                            <td>OLD Time: </td>
                            <td colspan="2"><?php echo $result_old['time']; ?></td>
                        </tr>
                        <tr>
                            <td>Category</td>
                            <td>On stock</td>
                            <td>SQL</td>
                        </tr>
                        </thead>
                            <tbody>
                            <?php foreach($result_old['values'] as $row){ ?>
                            <tr>
                                <td><?php echo $row['category']; ?></td>
                                <td><?php echo $row['on_stock']; ?></td>
                                <td><?php echo $row['sql']; ?></td>
                            </tr>
                            <?php } ?>
                            </tbody>
                        </table>

                    </div>
                    <div class="panel-body">
                        <table class="table table-bordered table-hover" id="task_b">
                        <thead>
                        <tr>
                            <td>Optimization Time: </td>
                            <td colspan="2"><?php echo $result['time']; ?></td>
                        </tr>
                        <tr>
                            <td>Category</td>
                            <td>On stock</td>
                            <td>SQL</td>
                        </tr>
                        </thead>
                            <tbody>
                            <?php foreach($result['values'] as $row){ ?>
                            <tr>
                                <td><?php echo $row['category']; ?></td>
                                <td><?php echo $row['on_stock']; ?></td>
                                <td><?php echo $row['sql']; ?></td>
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
