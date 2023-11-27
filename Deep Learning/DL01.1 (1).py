#!/usr/bin/env python
# coding: utf-8

# In[1]:


#Experiment 1.1 Create a perceptron and apply sigmoid activation


n = int(input("Enter number of elements : ")) # number of elements as input

print("Enter the inputs")
inputs = [] # creating an empty list for inputs

for i in range(0, n): # iterating till the range
    ele = float(input())
    inputs.append(ele) # adding the element

print(inputs)

weights = []
print("Enter the weights")


for i in range(0, n): # iterating till the range
    ele = float(input())
    weights.append(ele) # adding the element
    
print(weights)

print("The net input can be calculated as Yin = x1w1 + x2w2 + x3w3")

Yin = []

for i in range(0, n):
    Yin.append(inputs[i]*weights[i])
    
Y_out = (round(sum(Yin),3))

print(Y_out)

#Apply sigmoid activation

import numpy as np 

Y_act = 1/(1 + np.exp(-Y_out))

print(Y_act)


# In[ ]:




