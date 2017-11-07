require 'json'

class IRKV
    def initialize(file)
        @file = file

        # Check file's not exist and false create it
        if !File.exist?(@file)
          File.new @file
        end

        return true
    end

    def set(key, value)
        f = File.open(@file, 'r')
        parsed = JSON f.read
        f.close
        parsed[key] = value
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

    def delete(key)
        f = File.open(@file, 'r')
        parsed = JSON f.read
        f.close
        parsed.delete(key)
        f = File.open(@file, 'w')
        f.write(JSON.generate parsed)
        f.close
        return true
    end

    def update(key, value)
        f = File.open(@file, 'r')
        parsed = JSON f.read
        f.close
        parsed[key] = value
        f = File.open(@file, 'w')
        f.write(JSON.generate parsed)
        f.close
        return true
    end
end
