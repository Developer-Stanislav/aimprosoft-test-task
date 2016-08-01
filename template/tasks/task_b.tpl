<?php echo $header; ?>

<div id="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-offset-2 col-sm-8">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h1 class="panel-title">Tasks "B"</h1>
                    </div>
                    <div class="panel-body">
                        <label class="col-sm-2 control-label text-right" for="input-search">Search</label>
                        <div class="col-sm-10">
                            <input name="search" value="" placeholder="Search" id="input-search" class="form-control"
                                   type="text"/>
                        </div>
                    </div>
                    <div class="panel-body">
                        <table class="table table-bordered table-hover" id="task_b">
                            <tbody>
                            <?php foreach ($table as $key => $row) { ?>
                            <tr>
                                <td><input name="switcher-row-<?php echo $key;?>" id="input-switcher-<?php echo $key;?>"
                                           class="checkbox" type="checkbox" title="Switcher"/></td>
                                <?php foreach ($row as $word) { ?>
                                <td><?php echo $word; ?></td>
                                <?php } ?>
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
<script><!--
    $('#input-search').keyup(function () {
        var value = $(this).val();
        var table = $('#task_b tbody tr');
        if (value != '') {
            for (var i = 0; i < table.length; i++) {
                var cnt = 0;
                var row = $(table[i]).children('td');
                for (var j = 1; j < row.length; j++) {
                    var item = $(row[j]);
                    if (item.text().indexOf(value) != -1) {
                        item.css('background-color', 'green');
                        cnt++;
                    } else {
                        item.css('background-color', '#fff');
                    }
                }

                if (cnt > 0) {
                    $(row[0]).children('input.checkbox').attr('checked', 'checked');
                } else {
                    $(row[0]).children('input.checkbox').removeAttr('checked');
                }
            }
        }else {
            table.find('input.checkbox').removeAttr('checked');
            table.find('td').css('background-color', '#fff');
        }
    });
    //--></script>
<?php echo $footer; ?>
