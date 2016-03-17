# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)Content.all


# create users
iron_man = User.create(full_name: "Iron man", contents: [],
            about: "It is a first man of steel",
            avatar_src: "http://medya.buldumbuldum.com/marvel-iron-man-maske-ve-el-lamba_500.jpg")
captain = User.create(full_name: "Captain America", contents: [],
            about: "It is a story of a man who was nothing but have a big clear hard",
            avatar_src: "http://vignette1.wikia.nocookie.net/disney/images/f/fa/Captain-America-AOU-Render.png/revision/latest?cb=20150208173400")

# create iron_man's content
iron_man_content = [{title: "Youtube video", description: "Describes video",
  content_image_url: "", video_file_src: "", user: iron_man},
 {title: "One more Youtube video", description: "also describes video",
  content_image_url: "", video_file_src: "", user: iron_man}
].map do |content|
  Content.create(content)
end


# create captain's content
captains_content = [{title: "Youtube video from Captain", description: "Describes video",
                                    content_image_url: "", video_file_src: "", user: captain},
                                   {title: "One more Youtube video from Captain", description: "also describes video",
                                    content_image_url: "", video_file_src: "", user: captain}].map do |content|
  Content.create(content)
end


# create two way binding has_many
iron_man.update(contents: iron_man_content.map(&:id))
captain.update(contents: captains_content.map(&:id))



