# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

MAX_X = 50
MAX_Y = 50
RANKS = %w(unranked bronze silver gold platinum diamond master challenger)
COLORS = %w(yellow blue pink)
count = 0

puts "starting seeding"

LastMatchId.create(id: 42, direction: 1)

RANKS.each do |rank|
  COLORS.each do |color|
    (0...MAX_X).each do |x|
      (0...MAX_Y).each do |y|
        Bucket.create(x: x, y: y, rank: rank, color: color, wins: 0, losses: 0)
        count += 1
      end
    end
    puts "done with #{rank} #{color}s, so far created #{count} buckets"
  end
end
puts "#{count} buckets created"
puts "done seeding, have a great day! :)"


