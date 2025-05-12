extends Sprite3D

# Теория:
var coins = 5   # Переменная int, может меять значение.
var player_name = "robot"   # Перременная str.
var hearts = 3.5   # Переменная float.
const SPEED = 2  # Константа ВСЕГДА КАПСОМ, постоянна и не меняется.
var x = coins / SPEED  # Можно комбинировать переменные и константы.
# " = " это оператор присвоения, " == " это оператор равно.
var is_godot_awesome = true  # Инициализируем как true.
var key_collected = false


# Вызывается единожды при первом открытии сцены.
func _ready() -> void:
	print(add_these_numbers(11, 12))  # Переменные x и y.


# Вызывается каждый фрейм в течение 60 сек.
func _process(delta: float) -> void:
	#minion()
	check_inputs()


func minion():  # Функция - подпрограмма в большой программе.
	print("BANANA!")


func add_these_numbers(x, y):   # Внутри переменные - параметры функции.
	var sum = x + y
	return sum


func check_inputs():
	if Input.is_action_pressed("ui_left"):
		rotate_y(deg_to_rad(-SPEED)) # Движение на левую сторону.
	elif Input.is_action_pressed("ui_right"):
		rotate_y(deg_to_rad(SPEED)) # Переводим градусы в радианы.
