$hash = {
  'key1'   => 'value1',
  'key2'   => 3,
  key3     => {
    'fizz' => 'buzz'
  }
}

$output = $hash.to_yaml
notice($output)
