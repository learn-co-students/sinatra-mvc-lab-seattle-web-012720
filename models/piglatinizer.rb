class PigLatinizer
    attr_accessor :input

    def piglatinize(input=nil)

   
        
        a = input.split(" ")
        z = a.map{|word|word =~ /\A(?=[^aeiou])(?=[a-z])/i}

        x = a.map{|word|
        if word[0].scan(/[bcdfghjklmnpqrstvwxyz]/i).count == 0
            j = word.chars
            k = j.push("way") 
            s = k.join
            s
        
        elsif word[0].scan(/[bcdfghjklmnpqrstvwxyz]/i).count == 1
            

             
                b = word.chars
                x = b.shift
                y = b.push(x)
                
            if y[0].scan(/[bcdfghjklmnpqrstvwxyz]/i).count == 1
                l = y.shift
                p = y.push(l)
                #z = y.push("ay")
               # z.join
               if p[0].scan(/[bcdfghjklmnpqrstvwxyz]/i).count == 1
                u = p.shift
                t = p.push(u)
                r = p.push("ay")
                r.join
               else
                z = p.push("ay")
                z.join
               end
            else
                y.push("ay")
                y.join
            end

        else
       
        end
       
    }.join(' ')
        x
         # ["lol", "hi"]

        # a.map{|word|word =~ /\A(?=[^aeiou])(?=[a-z])/i}
         #b.select{|word|word ==nil}
        #word+"way"
        
       # binding.pry
       #b = a.map{|word|word =~ /\A(?=[^aeiou])(?=[a-z])/i} #[nil,0,0]
      # sip.map{|word|word == nil word+"lol"}

       # c = a.map{|array|array.scan(/[bcdfghjklmnpqrstvwxyz]/).first} #["h","i"]
        #a.delete(b)


       # join(" ")
      end
      #binding.pry
#binding.pry


end

#sip = PigLatinizer.new("hey boy")