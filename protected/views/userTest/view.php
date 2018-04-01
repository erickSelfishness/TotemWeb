<?php
$this->breadcrumbs=array(
	'User Tests'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>Yii::t('app', 'List') . ' ' . $model->label(2),'url'=>array('index')),
	array('label'=>Yii::t('app', 'Create') . ' ' . $model->label(),'url'=>array('create')),
	array('label'=>Yii::t('app', 'Update') . ' ' . $model->label(),'url'=>array('update','id'=>$model->id)),
	Yii::app()->getModule('user')->isAdmin() ? array('label'=>Yii::t('app', 'Delete') . ' ' . $model->label(),'url'=>'#','linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')) : array(),
	Yii::app()->getModule('user')->isAdmin() ? array('label'=>Yii::t('app', 'Manage') . ' ' . $model->label(2),'url'=>array('admin')) : array(),
);
?>

<h1>Ver UserTest #<?php echo $model->id; ?></h1>

<?php $this->widget('bootstrap.widgets.TbDetailView',array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'user_id',
		'test_id',
		'date_taken',
		'score',
		'gender',
		'height',
		'weight',
		'age',
		'marital_status',
		'occupation',
		'occupation_area',
		'activity_level',
		'working_days_sleep_hours',
		'working_days_sleep_hours_desired',
		'working_days_sleep_quality',
		'weekend_sleep_hours',
		'weekend_sleep_hours_desired',
		'weekend_sleep_quality',
		'working_hours',
		'exercise_hours',
		'recreation_hours',
		'travel_hours',
	),
)); ?>
