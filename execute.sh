#! /bin/bash

CURRENTEPOCTIME=$(date +%s)

mkdir output-logs/

echo flake8-"$CURRENTEPOCTIME".txt

flake8 . --count --exit-zero --show-source --max-line-length=127 --statistics >> output-logs/flake8-"$CURRENTEPOCTIME".txt

pytest tests/test_class.py --doctest-modules --junitxml=output-logs/junit/test-results-"$CURRENTEPOCTIME".xml

coverage run -m pytest
coverage report -m > output-logs/coverage-report-"$CURRENTEPOCTIME".txt
coverage html
cp -r htmlcov output-logs/
rm -rf htmlcov

radon cc . > output-logs/radon-cyclomatic-complexity-"$CURRENTEPOCTIME".txt
radon raw . > output-logs/radon-raw-metrics-"$CURRENTEPOCTIME".txt
radon mi . > output-logs/radon-maintainability-index-"$CURRENTEPOCTIME".txt
radon hal . > output-logs/radon-halstead-metrics-"$CURRENTEPOCTIME".txt