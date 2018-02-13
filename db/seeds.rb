# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#

10.times do |blog|
    Blog.create!(
        title: "My blog post #{blog}",
        body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, 
                sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
                Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
                Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. 
                Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    )
end

puts "10 blog posts created"


5.times do |skill|
    Skill.create!(
        title: "Rails #{skill}",
        percent_utilized: 15
        )
end

puts "5 skills created"

9.times do |portfolio_item|
    Portfolio.create!(
        title: "Portofolio title #{portfolio_item}",
        subtitle: "My great service",
        body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
                Pellentesque pulvinar pellentesque habitant morbi. Mi proin sed libero enim sed. 
                Nunc sed blandit libero volutpat sed. Nullam non nisi est sit amet.",
        main_image: "http://via.placeholder.com/600x400",       
        thumb_image: "http://via.placeholder.com/350x200",
        
        )
end


puts "9 portfolio items created"
    