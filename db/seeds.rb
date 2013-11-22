# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

text = Category.new
text.name = "Text"
text.instructions = "Enter your text into the box below:"
text.save
image = Category.new
image.name = "Image"
image.instructions = "Enter the image's link into the text box below:"
image.save
youtube_video = Category.new
youtube_video.name ="YouTube Video"
youtube_video.instructions = "Enter the YouTube Video's link into the text box below:"
youtube_video.save
a_dodont = Dodont.new
a_dodont.content = 'http://upload.wikimedia.org/wikipedia/commons/e/e1/Red_Squirrel_-_Lazienki.JPG'
a_dodont.category_id = 2
a_dodont.save
