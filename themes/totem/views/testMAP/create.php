<?php
$this->breadcrumbs=array(
	'TestEpworths'=>array('index'),
	Yii::t('app', 'Create'),
);

$this->menu = array(
	Yii::app()->getModule('user')->isAdmin() ? array('label'=>Yii::t('app', 'Manage') . ' ' . $model->label(2), 'url'=>array('admin')) : array(),
);
?>

<script>
    var currentScreen = 1;
    var num_screens = 4;
    
    function previous(){
        currentScreen--;
        showScreen(currentScreen);
    }
    /*function next(){
        $('#Registration_submit').click();
    }*/
    function showScreen(id){
        $('.screen').removeClass('active');
        $('#screen'+id).addClass('active');
        updatePreviousVisible();
    }
    
    function updatePreviousVisible(){
        if (currentScreen == 1)
            $('.previous').hide();
        else
            $('.previous').show();        
    }
    
    function onFormValidate(form, data, hasError){
        //alert('hasError: ' + hasError);
        
        if (hasError){
            console.log(data);
            
            for (var s=1; s<currentScreen+1; s++){
                var errors = $('#screen'+s).find('.error:visible');
                if (errors.length > 0){
                    showScreen(s);
                    console.log(errors);
                    return;
                }
            }
        }
        currentScreen++;
        if (currentScreen < num_screens+1){
            $('.screen').find('.error').hide();
            showScreen(currentScreen);
        }else{
            document.getElementById('TestMAPs-form').submit();
        }        
    }
</script>


<div class="cuestionario form-centered">
    
    <div class="span5 offset1" style="margin-top: 20px;">
        <div class="iconoTest span1 center"><img src="images/ico_test_map.png" alt=""></div>
        <h1>Índice de predicción de apnea</h1>

         <div class="intro">
            <h2>Aclaración</h2>
            <p>
                Nunca: ninguna vez por semana<br>
                Casi nunca: menos de una vez por semana<br>
                A veces: 1-2 veces por semana<br>
                Con frecuencia: 3-4 veces por semana<br>
                Siempre: 5-7 veces por semana<br>
                Si no está seguro, estime la respuesta.
            </p>
        </div>
        <br>
        <?php echo CHtml::link('Abandonar test', array('totem/test'), array('class'=>'btn btn-normal bt-abandon-test')); ?>
                
    </div>

    <div class="span12" style="margin-top: 50px;">
        <div class="center">           
            
            <?php $form=$this->beginWidget('bootstrap.widgets.TbActiveForm',array(
                'id'=>'TestMAPs-form',
                'enableAjaxValidation'=>true,
                'clientOptions'=>array(
                    'validateOnSubmit'=>true,
                    'afterValidate'=>'js:onFormValidate',
                    'validateOnChange'=>false,
                ),
                'htmlOptions' => array(
                    //'enctype' => 'multipart/form-data',
                )
            )); 
            
            $profile = 'TestMAPForm';
            ?>
            
            <div class="row nomargin">
                <?php //echo $form->errorSummary($model); ?>
            </div>

            <div class="wizard">
                <p>En el transcurso del último mes, ¿cuántas noches o días por semana tuvo, o le dijeron que tuvo lo siguiente? <br>Seleccione la respuesta correcta para cada pregunta.</p>
                <br>            
                <div id="screen1" class="screen active">
                    <?php echo $this->renderPartial('_question',array('model'=>$model, 'form'=>$form, 'question'=>'question_1')); ?>
                    <?php echo $this->renderPartial('_question',array('model'=>$model, 'form'=>$form, 'question'=>'question_2')); ?>
                    <?php echo $this->renderPartial('_question',array('model'=>$model, 'form'=>$form, 'question'=>'question_3')); ?>
                    <?php echo $this->renderPartial('_question',array('model'=>$model, 'form'=>$form, 'question'=>'question_4')); ?>
                </div>                
                <div id="screen2" class="screen">
                    <?php echo $this->renderPartial('_question',array('model'=>$model, 'form'=>$form, 'question'=>'question_5')); ?>
                    <?php echo $this->renderPartial('_question',array('model'=>$model, 'form'=>$form, 'question'=>'question_6')); ?>
                    <?php echo $this->renderPartial('_question',array('model'=>$model, 'form'=>$form, 'question'=>'question_7')); ?>
                    <?php echo $this->renderPartial('_question',array('model'=>$model, 'form'=>$form, 'question'=>'question_8')); ?>
                </div>                
                <div id="screen3" class="screen">
                    <?php echo $this->renderPartial('_question',array('model'=>$model, 'form'=>$form, 'question'=>'question_9')); ?>
                    <?php echo $this->renderPartial('_question',array('model'=>$model, 'form'=>$form, 'question'=>'question_10')); ?>
                    <?php echo $this->renderPartial('_question',array('model'=>$model, 'form'=>$form, 'question'=>'question_11')); ?>
                    <?php echo $this->renderPartial('_question',array('model'=>$model, 'form'=>$form, 'question'=>'question_12')); ?>
                </div>                
                <div id="screen4" class="screen">
                    <?php echo $this->renderPartial('_question',array('model'=>$model, 'form'=>$form, 'question'=>'question_13')); ?>
                    <?php echo $this->renderPartial('_question',array('model'=>$model, 'form'=>$form, 'question'=>'question_14')); ?>
                </div>
            </div>
            
            <div class="row actions">
                <br>
                <span class="previous">
                    <button type="button" class="btn btn-normal" onclick="previous();"><i class="icon-chevron-left"></i>&nbsp;Volver</button>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                </span>
                <button type="submit" class="btn btn-large btn-green">Continuar</button>
            </div>
            
            <?php $this->endWidget(); ?>
        </div>
    </div>
</div>

<script>
jQuery(function($) {
  $('div.btn-group[data-toggle-name=*]').each(function(){
    var group   = $(this);
    var form    = group.parents('form').eq(0);
    var name    = group.attr('data-toggle-name');
    var hidden  = $('input[name="' + name + '"]', form);
    $('button', group).each(function(){
      var button = $(this);
      button.live('click', function(){
          hidden.val($(this).val());
      });
      if(button.val() == hidden.val()) {
        button.addClass('active');
      }
    });
  });
});
$(function(){
    updatePreviousVisible();
});
</script>