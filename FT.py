import numpy as np

def DFT(x):
	N = len(x)
	n = np.arange(N)
	k = n.reshape((N,1))
	T = np.exp(-2j * np.pi * k * n / N)
	X = np.dot(T, x)
	return X


def FFT(x):
	N = len(x)
	if N == 1:
		return x
	else:
		Xe = FFT(x[::2])
		Xo = FFT(x[1::2])
				
		factor = np.exp(-2j*np.pi*np.arange(N)/N) # compute division 

		X = np.concatenate([Xe+factor[:int(N/2)]*Xo, Xe+factor[int(N/2):]*Xo])

		return X

x = np.array([1, 2, 3, 4])

print('DFT: ')
print(DFT(x))
print('FFT: ')
print(FFT(x))




