require 'json'

class IRKV
    def initialize(file)
        @file = file
        return true
    end

    def set(key, value)
        f = File.open(@file, 'r')
        parsed = JSON f.read
        parsed[key] = value
        f.close
        f = File.open(@file, 'w')
        f.write(JSON.generate parsed)
        f.close
        return true
    end

    def get(key)
        f = File.open(@file, 'r')
        parsed = JSON f.read
        f.close
        return parsed[key]
    end
end