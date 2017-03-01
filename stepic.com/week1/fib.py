def helper(some_list, index, callback):
	# import pdb; pdb.set_trace()
	if index <= 1:
		return index
	try:
		return some_list[len(some_list) - index]
	except:
		cur_num = callback(index, some_list)
		some_list.insert(0, cur_num)
		return cur_num


def fib2(n, alist):
	# if n <= 1:
		# return n
	# else:
	return helper(alist, n-1, fib2) + helper(alist, n-2, fib2)


def fib3(n):
	return helper1(n-1, 0, 1)


def helper1(index, last, cur):
	if index == 0 :
		return last

	helper1(index-1, last)

print(fib2(30, []))