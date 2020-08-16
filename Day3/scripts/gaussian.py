import math

def f(mu,sigma2,x):
	sigma=math.sqrt(sigma2)
	prob = (1/(sigma*math.sqrt(2*math.pi)))*(math.exp(-0.5*(math.pow((x-mu)/sigma,2))))
	return prob

if __name__ == '__main__':
	print(f(10.0,4.0,8.0))
