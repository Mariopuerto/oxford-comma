def oxford_comma(array)
    if array.length == 1
        array.join
    elsif array.length == 2
        array.join(" and ")
    else
        array.each.collect do |value|
            if value == array[-1]
                array[-1] = "and " << value
            end
        end
        array.join(", ")
    end
end

# returns a string without any additional formatting when given a 1-element array (FAILED - 1)
# adds 'and' between elements when given a 2-element array (FAILED - 2)
# adds commas plus a final 'and' when given a 3-element array (FAILED - 3)
# correctly formats arrays of lengths greater than three (FAILED - 4)

 