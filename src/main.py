def f():
    raise SystemExit(1)


def add(x, y):
    return x + y


def subtract(x, y):
    return x - y


def multiply(x, y):
    return x*y


def divide(x, y):
    return x/y


if __name__ == "__main__":

    addition = add(1, 0)
    subtraction = subtract(1, 0)
    multiplication = multiply(1, 1)
    division = divide(1, 1)

    print(addition, subtraction, multiplication, division)
