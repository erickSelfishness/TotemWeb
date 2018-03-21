            <div class="row nomargin">
                <label class="span4"><?php $labels = $model->attributeLabels();
                                           echo $labels[$question]; ?></label>
                <?php $this->widget('bootstrap.widgets.TbButtonGroup', array(
                    'type' => 'normal',
                    'size' => 'small',
                    'buttonType' => 'button',
                    'toggle' => 'radio',
                    'htmlOptions' => array('data-toggle-name'=>'PittsburghTest['.$question.']', 
                                           'class'=>'span6 pull-right'),
                    'buttons'=>array(
                        array('label'=>'Ningún problema', 'htmlOptions' => array('value'=>'0')),
                        array('label'=>'Poco problema', 'htmlOptions' => array('value'=>'1')),
                        array('label'=>'Moderado problema', 'htmlOptions' => array('value'=>'2')),
                        array('label'=>'Mucho problema', 'htmlOptions' => array('value'=>'3')),
                    ),
                )); ?>
                <input type="hidden" name="PittsburghTest[<?php echo $question; ?>]" value="<?php echo $model[$question]; ?>" />
            </div>
                