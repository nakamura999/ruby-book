def greeting(country)
	# countryがnillならメッセージを返してnillを抜ける
	country or return 'countryを入力してください'

	if country == 'japan'
		'こんにちは'
	else
		'hell'
	end
end


# greeting(nill)       #=>   'countryを入力してください'
# greeting('japan')    #=>    'こんにちは'