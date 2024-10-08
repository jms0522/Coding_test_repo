def solution(array):
    array.sort()
    
    mid_index = len(array) // 2

    return array[mid_index]