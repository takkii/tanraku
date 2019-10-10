# frozen_string_literal: true

class MyError < StandardError
  def volt
    raise MyError
  rescue StandardError => e
    puts "#{e.class} : #{e.message}"
    puts e.backtrace.join('          \n')
  ensure
    puts '例外メッセージは以上です！'
  end

  def execute_process
    raise MyError, 'プロジェクト固有の例外です！'
  end

rescue MyError => e
  e.backtrace.join('        \n')
end

# MyError = Class.new(StandardError)
MyError1 = Class.new(MyError)
MyError2 = Class.new(MyError)
MyError3 = Class.new(MyError)

class YouError < RuntimeError
  def anpea
    raise YouError
  rescue StandardError => e
    puts "#{e.class} : #{e.message}"
    puts e.backtrace.join('          \n')
  ensure
    puts '例外メッセージは以上です！'
end
end

# YouError = Class.new(ScriptError)
YouError1 = Class.new(YouError)
YouError2 = Class.new(YouError)
YouError3 = Class.new(YouError)

class WhoError < RuntimeError
  def teikou
    raise WhoError
  rescue StandardError => e
    puts "#{e.class} : #{e.message}"
    puts e.backtrace.join('          \n')
  ensure
    puts '例外メッセージは以上です！'
end
end

# WhoError = Class.new(SignalException)
WhoError1 = Class.new(WhoError)

class CatError < RuntimeError
  def kasai
    raise CatError
  rescue StandardError => e
    puts "#{e.class} : #{e.message}"
    puts e.backtrace.join('          \n')
  ensure
    puts '例外メッセージは以上です！'
end
end

# CatError = Class.new(NoMemoryError)
CatError1 = Class.new(CatError)

class DogError < RuntimeError
  def tebunan
    raise DogError
  rescue StandardError => e
    puts "#{e.class} : #{e.message}"
    puts e.backtrace.join('          \n')
  ensure
    puts '例外メッセージは以上です！'
end
end

# DogError = Class.new(SystemExit)
DogError1 = Class.new(DogError)

class Object
  def tanraku
    m = Mutex.new

    begin
      m.lock
      raise Object
    rescue StandardError => e
      puts e.backtrace
      print 'Tanraku Method Exception '
    ensure
      puts '--> next class search...'
      m.unlock
    end
  end

  def tanraku_exit
    m2 = Mutex.new

    begin
      m2.lock
      raise Object
    rescue StandardError => ef
      puts ef.backtrace
    ensure
      puts '--> Tanraku_Exit Method Exception'
      m2.unlock
      exit!
    end
  end

  def execute_process
    raise Object
  rescue StandardError => e
    puts "#{e.class} : #{e.message}"
  ensure
    puts ea.backtrace
  end

  def tanraku_log
    Dir.mkdir('log', 0o666) unless FileTest.exist?('log')
    File.open('log/logs.txt', 'a:utf-8') do |m2|
      exee = Exception.new('User Exception is raise message.')
      m2.puts exee.message
      raise
    rescue StandardError => e
      File.open('log/logs.txt', 'a:utf-8') do |m|
        m.puts e.backtrace.to_s
        m.puts "#{e.class} : #{e.message}"
      end
    ensure
      puts 'log write (log/logs.txt).'
    end
  end
end
