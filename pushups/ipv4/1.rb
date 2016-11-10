#!/usr/bin/env ruby

ADDRESSES = (256 * 16777216) + (256 * 65536) + (256 * 256) + (256)

def validate_address(ipaddr)
  return false if /[a-zA-Z]+/.match(ipaddr)
  return false unless /\d.?{1,4}+/.match(ipaddr)
  elements = ipaddr.split('.')
  if elements.size == 1
    ipaddr_int = ipaddr.to_i
    if (ipaddr_int < ADDRESSES ) && ipaddr_int > 0
      return true
    else
      return false
    end
  elsif elements.size == 4
    validity = true
    elements.each do |octect|
      octect_int = octect.to_i
      validity = validity && octect_int >= 0 && octect_int <= 255
    end
    return validity
  end
end

def is_address_valid?(ipaddr)
  validate_address(ipaddr) ? "\033[32mvalid\033[0m\n" : "\033[31minvalid\033[0m\n"
end

if $stdin.tty?
  ARGV.each do |ipaddr|
    ipaddr.strip!
    puts "#{ipaddr} is #{is_address_valid?(ipaddr)}"
  end
else
  $stdin.each_line do |ipaddr|
    ipaddr.strip!
    puts "#{ipaddr} is #{is_address_valid?(ipaddr)}"
  end
end

