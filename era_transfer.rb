#! /usr/bin/env ruby
#-*- encoding: utf-8 -*-

require 'date'

# p Date.strptime(ARGV[0], "%Y-%m-%d")
date =  Date.parse(ARGV[0])

Meiji_start  = Date.parse("1868-9-8")
Taisho_start = Date.parse("1912-7-30")
Showa_start  = Date.parse("1926-12-25")
Heisei_start = Date.parse("1989-1-8")

if (date > Meiji_start && date < Taisho_start) then
  date = date << 12 * 1867
  puts date.strftime("明治%1Y年%m月%d日")
elsif date < Showa_start then
  date = date << 12 * 1911
  puts date.strftime("大正%1Y年%m月%d日")
elsif date < Heisei_start then
  date = date << 12 * 1925
  puts date.strftime("昭和%1Y年%m月%d日")
else
  date = date << 12 * 1988
  puts date.strftime("平成%1Y年%m月%d日")
end
