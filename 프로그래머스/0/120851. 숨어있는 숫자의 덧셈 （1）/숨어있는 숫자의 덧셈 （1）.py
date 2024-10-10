def solution(my_string):
    return sum(int(char) for char in my_string if char.isdigit())