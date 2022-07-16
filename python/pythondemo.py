class harsha:
    def sri(self):
        pass
    def sai(self,name):
        print("name is:",name)

shsk=harsha()
shsk.sri()
shsk.sai('lll')

#Instance method and static method

class harsha:
    def sri(self):
        print("instantance method")  #instance method

    @staticmethod   #static method
    def sai():
        print("static method")

shsk=harsha()
shsk.sri()
harsha.sai()

#Decalring the variables inside the class

class myclass:
    a,b=100,200  #class variables

    def add(self):
        print(self.a+self.b)
    def mul(self):
        print(self.a * self.b)


mc=myclass()

mc.add()
mc.mul()

#local variables / class variables / global variables

i,j=1,2         #global variables outside of class

class var:
    c,d=10,20           #class varibales inside of class

    def add(self,x,y):   #x&y are local variable writtenn in the method
        print(x+y)       #local variable
        print(self.c+self.d)        #class varibales
        print(i+j)              #global variables

lv=var()
lv.add(100,200)

#local variables / class variables / global variables with same variablr notations

a,b=1,2         #global variables outside of class

class vari:
    a,b=10,20           #class varibales inside of class

    def add(self,a,b):   #x&y are local variable writtenn in the method
        print(a+b)       #local variable
        print(self.a+self.b)        #class varibales
        print(globals()['a']+globals()['b'])              #global variables are written globals() keyword followed by square brakets of variblesd

lv1=vari()
lv1.add(100,200)

#creating multiple objects

class robo:
    def dis(self):
        print("hk")

ob1=robo()      #ob1 is name of object #named object
ob1.dis()

ob2=robo()      #ob2 is name of object #named object
ob2.dis()

robo().dis()        #nameless object #class name is written

#how to check memory location of objects

class one:
    def m1(self):
        pass

c1=one()
c2=one()
c3=c1

print(id(c1))
print(id(c2))
print(id(c3))

print(c1 is c2)
print(c1 is c3)

#construtors
class cons:
    def m1(self):
        print("m")
    def __init__(self):     #intilization is used for construtor and excutes first of all method defined.
        print("this is constructor")

h=cons()
h.m1()

#converting local varibles into class variables

class lvcv:
    def values(self,val1,val2):     #vaL1&2 ARE LOCAL VARIABLES
        print(val1)
        print(val2)
        self.val1=val1          #USING THIS LOCCAL CONVERTED INTO CLASS VARIBLES
        self.val2=val2

    def add(self):
        print(self.val1+self.val2)

v=lvcv()
v.values(10,20)
v.add()

#HOW TO CALL CURRENT CLASS METHOD INTO ANTHOR METHOD

class omam:
    def mi(self):
        print ("method")
        self.m2(100)  #writting self keyword with requried method to call can do callling operation.

    def m2(self,a):
        print ("method",a)

oa=omam()
oa.mi()


#constructor with aruguments

class cwa:
    name="sai kamesh"
    def __init__(self,name):        #name is aarugument
        print(name)                 #lv
        print(self.name)            #CV

c=cwa("sri harsha")

#demo

class Emp:
    def __init__(self,eid,ename,esal):
        self.eid=eid
        self.ename=ename
        self.esal=esal

    def display(self):
        print("EMPid:{} EMPname:{} EMPsal:{}".format(self.eid,self.ename,self.esal))
        print("EMPid:%d EMPname:%s EMPsal:%g" %(self.eid,self.ename,self.esal))

u=Emp(7,"krishna",62500)
u.display()


#   PRE DEFINED FUNCIONS

#__str__  #__del__
class abcd:
    def __str__(self):
        return "sri"
    def __del__(self):
        print("delete")
c=abcd()
print(c)

del c

