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
                            <thead>
                            <tr>
                                <td colspan="2">Left Coast</td>
                                <td>River</td>
                                <td colspan="2">Right Coast</td>
                                <td>Iteration</td>
                            </tr>
                            <tr>
                                <td>People</td>
                                <td>Children</td>
                                <td></td>
                                <td>Children</td>
                                <td>People</td>
                                <td></td>
                            </tr>
                            </thead>
                            <tbody>
                            <?php foreach ($log['items'] as $item) { ?>
                                <tr>
                                    <td>
                                        <?php for ($i = 0; $i != $item['cpl']; $i++) { ; ?>
                                        <i class="fa fa-user"></i>
                                        <?php } ?>
                                    </td>
                                    <td>
                                        <?php for ($i = 0; $i != $item['ccl']; $i++) { ; ?>
                                        <i class="fa fa-child"></i>
                                        <?php } ?>
                                    </td>
                                    <td style="background-color: lightskyblue;" class="text-<?php echo $item['position']; ?>">
                                        <i class="fa fa-chain-broken"></i>
                                    </td>
                                    <td>
                                        <?php for ($i = 0; $i != $item['ccr']; $i++) { ; ?>
                                        <i class="fa fa-child"></i>
                                        <?php } ?>
                                    </td>
                                    <td>
                                        <?php for ($i = 0; $i != $item['cpr']; $i++) { ; ?>
                                        <i class="fa fa-user"></i>
                                        <?php } ?>
                                    </td>

                                    <td>
                                        <?php echo $item['i']; ?>
                                    </td>
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