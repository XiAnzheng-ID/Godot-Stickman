extends Node

#creating a signal called loop_finished
signal loop_finished

#tip press "Ctrl + K" to uncomment or commenting a piece of code
# Declare member of global variables here :
var angka = 5;
var message = "hello world from me"
var alive = false

#mendeklarasikan tipe data pada variabel
#you can also declare it manually on each function variabel you made
#not just on the global var (Check "add" function down below)
var time_slow : float = 1.234 


# function yang pertama kali berjalan.
func _ready():
	print("hello world")
	print(message)
	print(alive)
	print("")
	#Mendeklarasikan isi data variabel pada function
	#you can change anything whats in here to test 
	var hasilreturn = add(angka, 10)
	print(hasilreturn)
	print("")
	substract(10, 5)
	operator(10, 3)
	div(10, 3)
	number(15)
	condotional(21)
	condotional2(false, 10)
	loop()
	loop2()
	#call_deferred("function name") waiting for the script to afk or finished
	#then do the piece of code after it
	print("Called a defered function")
	call_deferred("loop3")
	
func add(a:int, b:int):
	print("Output from add function")
	var hasil = a + b
	print(hasil)
	#using "return" to returning an output from the memory 
	return hasil
	print("")
	
func substract(a, b): 
	print("Output from substract function")
	var result = a - b
	print(result)
	print("")
	
func operator(a, b):
	print("Output from operator function")
	var result = a * b
	print(result)
	print("")
	
func div(a, b):
	print("Output from div function")
	var result = a / b
	print(result)
	#modular division (menampilkan hasil sisa)
	var mod = a % b
	print(mod)
	print("")
		
func number(a):
	print("Output from number function")
	#"%" here means Interpolation (menggabungkan 2 var berbeda)
	#if you trying to combine 2 different var like strings and int numb
	var result = "My number is %d" % a 
	print(result)
	print("")
		
func condotional(age):
	print("Output from condotional function")
	if age > 30:
		print("Awesome")
	elif age < 12:
		print("Cool")
	else:
		print("Umur = %d" % age)
	print("")
	
func condotional2(hidup, health):
	print("Output from condotional2 function")
	if not hidup:
		print("Died")
		print("")
		return #stop the code here 
	if hidup and health == 0:
		print("Died")
	else:
		print("alive")
	#Clean version of this code/combining a 2 condotional into 1:
#	if not alive or (alive and health == 0):
#		print("Died")
#	else:
#		print("Alive")
	print("")
	
func loop():
	print("Output from loop function")
#	you can comment out one of these a var
	var a = ["One","Two","Three"]
#	var a = [1 , 2 , 3]
	for j in (a):
		print(j)
	print("")
		
func loop2():
	print("Output from loop2 function")
	for i in range(10):
		print(i)
	print("")

func loop3():
	print("Output from loop3 function")
	var x = 0
	while x < 5:
		print(x)
		x = x + 1
	print("")
	
	#giving a signal that this script has done all from top to bottom
	print("Signal Emitted")
	emit_signal("loop_finished")
