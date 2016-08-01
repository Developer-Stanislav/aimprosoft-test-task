<?php echo $header; ?>

<div id="content">
    <div class="container-fluid">
        <?php if(!$max && !$rows) { ?>
        <div class="row">
            <div class="col-sm-offset-2 col-sm-8">
                <div class="panel panel-default">
                    <div class="panel-heading" >
                        <h1 class="panel-title" style="margin: 9px 0 7px 0 ;"><i class="fa fa-tasks"></i> Task &quot;C&quot;</h1>
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
        <?php } ?>
        <div class="row">
            <div class="col-sm-offset-2 col-sm-8">
                <div class="panel panel-default">
                    <div class="panel-heading" >
                        <?php if($max || $rows) { ?>
                        <a class="btn btn-primary pull-right" href="<?php echo HTTP_SERVER; ?>index.php?task=task_cd">
                            <i class="fa fa-reply"></i>
                        </a>
                        <?php } ?>
                        <h1 class="panel-title" style="margin: 9px 0 7px 0 ;"><i class="fa fa-tasks"></i> Task &quot;D&quot;</h1>

                    </div>
                    <?php if($max){ ?>
                    <div class="panel-body">
                        <table class="table table-bordered table-hover" id="task_b">
                        <thead>
                        <tr><td colspan="3">SQL &quot;<?php echo $max['sql']; ?>&quot;</td></tr>
                        <tr>
                            <td>Ratio</td>
                            <td>Author</td>
                            <td>Reviews</td>
                        </tr>
                        </thead>
                            <tbody>
                            <tr>
                                <td><?php echo $max['ratio']; ?></td>
                                <td><?php echo $max['author']; ?></td>
                                <td><?php echo $max['reviews']; ?></td>
                            </tr>
                            </tbody>
                        </table>

                    </div>
                    <?php } ?>
                    <?php if($rows){ ?>
                    <div class="panel-body">
                        <table class="table table-bordered table-hover" id="task_b">
                        <thead>
                        <tr><td colspan="5">SQL &quot;<?php echo $rows_sql; ?>&quot;</td></tr>
                        <tr>
                            <td>ID</td>
                            <td>Title</td>
                            <td>Author</td>
                            <td>Filename</td>
                            <td>Reviews</td>
                        </tr>
                        </thead>
                            <tbody>
                            <?php foreach($rows as $row){ ?>
                            <tr>
                                <td><?php echo $row['id']; ?></td>
                                <td><?php echo $row['title']; ?></td>
                                <td><?php echo $row['author']; ?></td>
                                <td><?php echo $row['filename']; ?></td>
                                <td><?php echo $row['reviews']; ?></td>
                            </tr>
                            <?php } ?>
                            </tbody>
                        </table>

                    </div>
                    <?php } ?>


                    <?php if($author){ ?>
                    <div class="panel-body">
                        <table class="table table-bordered table-hover" id="task_b">
                        <thead>
                        <tr><td colspan="2">SQL &quot;<?php echo $author_sql; ?>&quot;</td></tr>
                        <tr>
                            <td>ID</td>
                            <td>Href</td>
                        </tr>
                        </thead>
                            <tbody>
                            <?php foreach($author as $row){ ?>
                            <tr>
                                <td><?php echo $row; ?></td>
                                <td><a href="<?php echo HTTP_SERVER; ?>index.php?task=task_cd&author=<?php echo $row; ?>">Author <?php echo $row; ?></a></td>
                            </tr>
                            <?php } ?>
                            </tbody>
                        </table>

                    </div>
                    <?php } ?>

                </div>
            </div>
        </div>
    </div>
</div>

<?php echo $footer; ?>
