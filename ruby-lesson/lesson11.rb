characters = [
  {name: "カズキ", age: 14},
  {name: "レオ"},
  {name: "リチャード", age: 30},
  {name: "コトリン"}
]

characters.each do |character|
	puts "----------"
	puts "名前は#{character[:name]}です"

	if character[:age]
		puts "年齢は#{character[:age]}歳です"
	else
		puts "年齢は秘密です"
	end
end