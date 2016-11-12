#!/usr/bin/env ruby
#
require 'ipaddr'

def is_address_valid?(ipaddr)
  begin
    if IPAddr.new(ipaddr).ipv4?
      return "\033[32mvalid\033[0m\n"
    end
  rescue
    return "\033[31minvalid\033[0m\n"
  end
end

if $stdin.tty?
  ARGV.each do |ipaddr|
    puts "#{ipaddr} is #{is_address_valid?(ipaddr)}"
  end
else
  $stdin.each_line do |ipaddr|
    ipaddr.strip!
    puts "#{ipaddr} is #{is_address_valid?(ipaddr)}"
  end
end

