=begin

Read about regular expressions. Then use the `gsub` method to replace all the numerical digits in the following string with an underscore.

address = "665 Clinton Lane, Wilkes Barre, PA 18702"

The result should be:

"___ Clinton Lane, Wilkes Barre, PA _____"

=end

address = "665 Clinton Lane, Wilkes Barre, PA 18702"
censored_address = address.gsub(/[1234567890]/, '_')
p censored_address