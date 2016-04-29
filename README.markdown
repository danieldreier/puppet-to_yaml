#### Puppet to_yaml function

## Overview

This module provides a trivial puppet function that converts puppet hashes to yaml

### Beginning with puppet_to_yaml

```shell
puppet module install danieldreier-to_yaml
```

## Usage

```puppet
$hash = {
  'key1'   => 'value1',
  'key2'   => 3,
  key3     => {
    'fizz' => 'buzz'
  }
}

$output = $hash.to_yaml
notice($output)
```

results in:
```yaml
---
key1: value1
key2: 3
key3:
  fizz: buzz
```

