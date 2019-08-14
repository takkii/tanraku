# frozen_string_literal: true

# MyError Class
class MyError < StandardError
  def volt
    raise MyError
  rescue StandardError => ex
    puts "#{ex.class} : #{ex.message}"
    puts ex.backtrace.join('          \n')
  ensure
    puts '例外メッセージは以上です！'
  end

  def execute_process
    raise MyError, 'プロジェクト固有の例外です！'
  end

rescue MyError => ed
  ed.backtrace.join('        \n')
end

# MyError = Class.new(StandardError)
MyError1 = Class.new(MyError)
MyError2 = Class.new(MyError)
MyError3 = Class.new(MyError)

# YouError Class
class YouError < RuntimeError
  def anpea
    raise YouError
  rescue StandardError => et
    puts "#{et.class} : #{et.message}"
    puts et.backtrace.join('          \n')
  ensure
    puts '例外メッセージは以上です！'
  end
end

# YouError = Class.new(ScriptError)
YouError1 = Class.new(YouError)
YouError2 = Class.new(YouError)
YouError3 = Class.new(YouError)

# WhoError Class
class WhoError < RuntimeError
  def teikou
    raise WhoError
  rescue StandardError => ey
    puts "#{ey.class} : #{ey.message}"
    puts ey.backtrace.join('          \n')
  ensure
    puts '例外メッセージは以上です！'
  end
end

# WhoError = Class.new(SignalException)
WhoError1 = Class.new(WhoError)

# CatError Class
class CatError < RuntimeError
  def kasai
    raise CatError
  rescue StandardError => ez
    puts "#{ez.class} : #{ez.message}"
    puts ez.backtrace.join('          \n')
  ensure
    puts '例外メッセージは以上です！'
  end
end

# CatError = Class.new(NoMemoryError)
CatError1 = Class.new(CatError)

# DogError Class
class DogError < RuntimeError
  def tebunan
    raise DogError
  rescue StandardError => es
    puts "#{es.class} : #{es.message}"
    puts es.backtrace.join('          \n')
  ensure
    puts '例外メッセージは以上です！'
  end
end

# DogError = Class.new(SystemExit)
DogError1 = Class.new(DogError)

# Object Class Addtion.
class Object
  def tanraku
    m = Mutex.new

    begin
      m.lock
      raise Object
    rescue StandardError => ee
      puts ee.backtrace
      print 'Tanraku Method Exception '
    ensure
      puts '--> next class search...'
      m.unlock
    end
  end

  def execute_process
    raise Object
  rescue StandardError => ea
    puts "#{ea.class} : #{ea.message}"
  ensure
    puts ea.backtrace
  end

  def tanraku_log
    Dir.mkdir('log', 0o666) unless FileTest.exist?('log')
    File.open('log/logs.txt', 'a:utf-8') do |m2|
      exee = Exception.new('User Exception is raise message.')
      m2.puts exee.message
      raise
    rescue StandardError => eo
      File.open('log/logs.txt', 'a:utf-8') do |m|
        m.puts eo.backtrace.to_s
        m.puts "#{eo.class} : #{eo.message}"
      end
    ensure
      puts 'log write (log/logs.txt).'
    end
  end
end
