"""
Sample tests
"""
from django.test import SimpleTestCase

from app import calc


class CalcTestCase(SimpleTestCase):
    """Test the calc module."""

    def test_add_numbers(self):
        """Test adding two numbers."""
        res = calc.add(5, 6)

        self.assertEqual(res, 11)

    def test_subtract_numbers(self):
        """Test subtracting two numbers."""
        res = calc.subtract(10, 15)

        self.assertEqual(res, 5)
