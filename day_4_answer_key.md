## Exercises 4A

#E1 The Road Not Taken

```sh
def reverse array 
	reversed = []
	array.each_with_index do |element, index|
		new_index = (array.length-1)-index
		reversed[new_index] = element
	end
	reversed
end

random_objects = ["apples", 4, "bananas", "kiwis", "pears"]

puts reverse(random_objects)
```

#E2 Custom Fizzbuzz

```sh
def fizzbuzz max_val
	index = 0
	while index< max_val
		if index % 15 == 0
			puts "fizzbuzz"
		elsif index % 5 == 0
			puts "buzz"
		elsif index % 3 == 0
			puts "fizz"
		else
			puts index
		end
		index = index + 1
	end
end
```

#E3 Google Map

```sh
engines = ["google", "bing", "ask jeeves"]
result = engines.map do |nose|
	if nose == "google"
		new_nose = "ok"
	elsif nose == "bing"
		new_nose = "bad!"
	else 
		new_nose ="what is that?"
	end
	new_nose
end
```

#E4 Hashing It Out

```sh
dishes = 
{ 
	:Lemonade => ["Lemons", "Sugar", "Water"], 
	:Bread => ["Flour", "Yeast", "Salt", "Water"], 
	:ice_cream => ["Cream", "Sugar", "Vanilla"]
}
 

recipies = 
{ 
	:Lemonade =>
		{ 
			:description => "delicious fruity beverage", 
			:ingredients => ["Lemons", "Sugar", "Water"], 
			:steps => ["1. squeeze out lemon juice into pitcher", "2. add water", "3. add sugar to taste", "4. DRINK IT UP!", "5. (optional) add tequila or whatever ya feel because we are adults"]
		}, 
	:Bread => 
		{ 
			:description => "heavenly fluffy gooey goodness", 
			:ingredients => ["Flour", "Yeast", "Salt", "Water"], 
			:steps => ["1. measure out flour", "2. add salt and yeast and mix to combine", "3. add warm water to activate yeast and form dough", "4. Knead for 5 minutes until smooth and elastic", "5. let rise for and hour in a warm place or overnight in fridge", "6. form into a log and score top. Bake in oven at 400 degrees farenheight for 35 minutes until golden", "6. eat that stuff like it's a godsend, because it basically is"]
		}, 
	:ice_cream => 
		{ 
			:description => "creamy cold sweet treat that is often accompanied by warm chocolate sauce and a cherry", 
			:ingredients => ["Cream", "Sugar", "Vanilla"], 
			:steps => ["1. mix all ingredients", "2. pour into ice cream maker", "3. BOOM ice cream"]
		}
}
```

#E5 Finding a Needle in a Hashstack

```sh
def index_of (some_string, letter)
	if some_string.to_s.index(letter.to_s) != nil
		puts some_string.to_s.index(letter.to_s)
	else
		puts -1
	end
end

#puts index_of("circle", "p")

def find_by_name (array, name)
	array.each do |squirrel|
		if squirrel[:name] == name
			puts squirrel
			break
		end
	end
end

people = [
	{
		:id => 1,
		:name => "Jessie"
	}, 
	{
		:id => 2,
		:name => "JJ"
	},
	{
		:id => 3,
		:name => "Jessie"
	},
	{
		:id => 4,
		:name => "Lisa"
	}
]

find_by_name(people, "Jessie")

def filter_by_name (array, name)
	array.each do |squirrel|
		if squirrel[:name] == name
			puts squirrel
		end
	end
end

filter_by_name(people, "Jessie")
```
 ##Exercises 4B

#Phonebook app

> in app.rb

 ```sh
require 'sinatra'

get '/' do
	erb :homepage
end

get '/contacts' do
	@contacts = ["Khangwelo", "Richard", "Amanda"]
	erb :contacts
end

get '/contacts/:contact' do
	contacts = {"Khangwelo" => 1234, "Richard" => 5678, "Amanda" => 9123}
	@contact_name = params["contact"]
	@phone = contacts[@contact_name]
	erb :info
end
 ```

> in views/index.erb

```sh
<h1> This is a Phonebook! </h1>

<h2><a href="localhost:9393/contacts"> Contacts</a></h2>
```

> in views/contacts.erb

```sh
<h2>Contacts</h2>
<ul>
	<%  @contacts.each do |name| %>
		<li><a href="localhost:9393/contacts/<%= name %>" ><%= name %></a></li>
	<% end %>
</ul>
```
> in views/info.erb

```sh
<p>Contact: <%= @contact_name %></p>
<p>Fake Phone Number: <%= @phone %></p>
```
