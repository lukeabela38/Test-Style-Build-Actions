import pytest
from main import f, add, subtract, multiply, divide


def test_f():
    with pytest.raises(SystemExit):
        f()


class TestClass:

    def test_add_0(self):
        assert add(1, 0) == 1

    def test_subtract_0(self):
        assert subtract(1, 0) == 1

    def test_multiply_0(self):
        assert multiply(1, 1) == 1

    def test_divide_0(self):
        assert divide(1, 1) == 1
