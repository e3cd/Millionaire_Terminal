class Prize
    def initialize
        @values = {
            1 => "$100,", 2 => "$200", 3 => "$300", 4 => "$500", 5 => "$1000", 6 => "$2000", 7 => "$4000", 8 => "$8000", 9 => "$16000", 10 => "$32000", 11 => "$64000", 12 => "$125000", 13 => "$250000", 14 => "$500000", 15 => "$1000000"
        }
        @question = 0
    end

    def get_prize
        @values[@question]
    end

    def increment 
        @question += 1
    end

    def get_threshold
        if @question >= 10
            @threshold_value = "$32,000"
    elsif @question >= 5
      @threshold_value = "$1,000"
    else 
      @threshold_value = "$0"
    end
    @threshold_value
end
