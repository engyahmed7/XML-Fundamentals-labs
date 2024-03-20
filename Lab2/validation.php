<?php
$xml = new DOMDocument();
$xml->load('employees.xml');

if ($xml->schemaValidate('emp_spy.xsd')) {
    echo "XML is valid.";
} else {
    echo "XML is invalid.";
}

