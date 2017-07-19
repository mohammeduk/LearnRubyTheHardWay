
string_format = "%{string_one} %{string_two} %{string_three} %{string_four}"

puts string_format % {string_one: 1, string_two: 2, string_three: 3, string_four: 4}
puts string_format % {string_one: "One", string_two: "Two", string_three: "Three", string_four: "Four"}
puts string_format % {string_one: true, string_two: false, string_three: false, string_four: true}
puts string_format % {string_one: 1, string_two: 2, string_three: 3, string_four: 4}
puts string_format % {string_one: string_format, string_two: string_format, string_three: string_format, string_four: string_format}

puts string_format % {
  string_one: "Foo",
  string_two: "Bar",
  string_three: "'Appy",
  string_four: "Days"
}
