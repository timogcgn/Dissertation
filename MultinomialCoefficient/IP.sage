IP={}

def IntegerPartition(n, eta):
    # Recursively find all integer partitions of n with eta summands...
    global IP
    if not((n, eta) in IP):
        IP[n, eta]=[]
        Recursive_IntegerPartition([], eta, n, eta, n)
    return IP[n, eta]

def Recursive_IntegerPartition(vec_n, eta, n, eta_true, n_true):
    # ...  by finding all integer partitions of n-x with eta-1 summands, for all x from 0 to n
    global IP
    if eta==1:
        IP[n_true, eta_true]+=[[n]+vec_n]
    else:
        for i in range(n,-1,-1):
            Recursive_IntegerPartition([i]+vec_n, eta-1, n-i, eta_true, n_true)