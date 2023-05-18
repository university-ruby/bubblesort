def bubble_sort(anime_episodes)
  n = anime_episodes.length
  
  loop do
    swapped = false

    (n-1).times do |i|
      if anime_episodes[i].episode_number > anime_episodes[i+1].episode_number
        anime_episodes[i], anime_episodes[i+1] = anime_episodes[i+1], anime_episodes[i]
        swapped = true
      end
    end

    break unless swapped
  end

  anime_episodes
end


class AnimeEpisode
  attr_accessor :title, :episode_number

  def initialize(title, episode_number)
    @title = title
    @episode_number = episode_number
  end
end

episodes = [
  AnimeEpisode.new("Attack on Titan", 5),
  AnimeEpisode.new("Naruto", 100),
  AnimeEpisode.new("One Piece", 500),
  AnimeEpisode.new("Dragon Ball Z", 200),
  AnimeEpisode.new("My Hero Academia", 12)
]

sorted_episodes = bubble_sort(episodes)

sorted_episodes.each do |episode|
  puts "#{episode.title} - Episode #{episode.episode_number}"
end

