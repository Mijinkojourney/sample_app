require 'benchmark'
symbol = { "foo" => "value" } 
string = { :foo => "value" }
integer = { 100 => "value" } 
str,sym,num='foo', :foo , 100

n=100_000_000
Benchmark.benchmark do |x|
  x.report('String') { n.times {string[str]}}
  x.report('Symbol') { n.times{ symbol[sym] }}
  x.report('Integer') { n.times{ integer[num] }}
end