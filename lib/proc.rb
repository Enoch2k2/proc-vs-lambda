def say
  Proc.new{|string| "you entered #{string}"}
end
