extends Area3D

const ROT_SPEED = 2  # Скорость оборота монеты, градусы (deg) за каждый фрейм.


# Вызывается единожды при первом открытии сцены.
func _ready() -> void:
	pass


# Вызывается каждый фрейм в течение 60 сек.
func _process(delta: float) -> void:
	rotate_y(deg_to_rad(ROT_SPEED)) # Переводим градусы в радианы.
	
	# Лучше использовать сигналы вместо if, они меньше нагружают память.
	# if has_overlapping_bodies():  # При перекрывании физическим объектом (телом).
		# queue_free()  # Удаляем из памяти компьютера за 1 фрейм.


func _on_body_entered(body: Node3D) -> void:
	queue_free()
