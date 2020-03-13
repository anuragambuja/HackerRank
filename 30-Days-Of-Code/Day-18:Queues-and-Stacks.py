import sys

class Solution:
    # Write your code here
    
    def __init__(self):
        self.q = list()
        self.s = list()
        
    def popCharacter(self):
        return self.s.pop()
        
    def dequeueCharacter(self):
        return self.q.pop()

    def pushCharacter(self, chr):
        self.s.append(chr)
    
    def enqueueCharacter(self, chr):
        self.q.insert(0, chr)
    
    

# read the string s
s=input()
#Create the Solution class object
obj=Solution()   

l=len(s)
# push/enqueue all the characters of string s to stack
for i in range(l):
    obj.pushCharacter(s[i])
    obj.enqueueCharacter(s[i])
    
isPalindrome=True
'''
pop the top character from stack
dequeue the first character from queue
compare both the characters
''' 
for i in range(l // 2):
    if obj.popCharacter()!=obj.dequeueCharacter():
        isPalindrome=False
        break
#finally print whether string s is palindrome or not.
if isPalindrome:
    print("The word, "+s+", is a palindrome.")
else:
    print("The word, "+s+", is not a palindrome.")    
