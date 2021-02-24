[![Gem Version](https://badge.fury.io/rb/tanraku.png)](https://badge.fury.io/rb/tanraku)[![MIT License](http://img.shields.io/badge/license-MIT-blue.svg?style=flat)](LICENSE)

## require 'tanraku'

```ruby
require 'tanraku'

class Sample
def ruby
puts "Hello"
end
end

Sample.new.ruby.tanraku
Sample.new.ruby.tanraku_log
Sample.new.ruby.tanraku_exit
```

## tanraku methods.

console output

```text
Tanraku Method Exception --> next class search.
```

## tanraku_log methods.

console output

```text
log write (log/logs.txt)
```

./log/logs.txt 

> User Exception is raise message.

*※ Execute as administrator when permission error.*

```text
As an original function, raise an exception and displays backtrace.
```

### tanraku_exit methods.

> --> Tanraku_Exit Method Exception

```markdown
Raises an exception and terminates processing.
```
