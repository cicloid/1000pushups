#!/usr/bin/env ruby

ADDRESSES = 0b1111_1111_1111_1111_1111_1111_1111_1111

# For simplicity's sake ignoring integer IP's as that would branch everything
def validate_address(ipaddr)
  return validate_int_address(ipaddr) if /^(\d+)$/.match(ipaddr)
  if matches = /^(\d+)\.(\d+)\.(\d+)\.(\d+)$/.match(ipaddr)
    result = true
    captures = matches.captures
    captures.each do |m|
      result = result && (m.to_i < 256 ? true : false)
    end
    return result
  else
    false
  end
end

def validate_int_address(ipaddr)
  ipaddr.to_i < ADDRESSES
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

