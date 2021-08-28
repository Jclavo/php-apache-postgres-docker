<?php

class Car
{
  // Properties
  public $name;
  public $color;

  // Methods
  function set_name($name)
  {
    $this->name = $name;
  }
  function get_name()
  {
    return $this->name;
  }
}

$toyota = new Car();
$sedan = new Car();
$toyota->set_name('Toyota');
$sedan->set_name('Sedan');

echo $toyota->get_name();
echo "<br>";
echo $sedan->get_name();
echo "<br>";
