extends Sprite3D

# Теория:
var coins = 5   # Переменная int, может меять значение.
var player_name = "robot"   # Перременная str.
var hearts = 3.5   # Переменная float.
const SPEED = 2  # Константа, постоянна и не меняется.
var x = coins / SPEED  # Можно комбинировать переменные и константы.
# " = " это оператор присвоения, " == " это оператор равно.


# Вызывается единожды при первом открытии сцены.
func _ready() -> void:
	pass


# Вызывается каждый фрейм в течение 60 сек.
func _process(delta: float) -> void:
	rotate_y(deg_to_rad(SPEED)) # Переводим градусы в радианы.
