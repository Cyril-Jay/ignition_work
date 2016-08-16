class Album
  attr_accessor :id, :album_name, :artists , :tracks

  def initialize(album_id, album_name, artists)
    @id = album_id
    @album_name = album_name
    @artists = artists
    @tracks = []
  end

  def total_time
    track_time = ""
    @tracks.each { |track| track_time << " #{ track[:duration_ms] }" }
    pre_time_array = track_time.split(" ").map(&:to_i)
    milli_sec_total = pre_time_array.inject(0){ | sum, millisecond | sum + millisecond }
    minutes_converson = (milli_sec_total.to_f / 60_000).round(2)
  end

  # so after not looking at exersise for few days i was able to get this to work for the duration.
  # i don't think it's quite the best way to go about it but i could never get the  "@tracks.each { |track| some_sum += track[:duration_ms] }"
  # to work properly. so instead i just shoved it all into a string and went from there.
  # i also followed some of Nathan's other suggestions and clearned up some of the code with things i found to be useless.

  def summary
    summary_outline = ""
    summary_outline << "Name: #{ @album_name }"
    summary_outline << "\nArtist(s): #{ @artists }"
    summary_outline << "\nDuration (min.): #{ total_time }"
    summary_outline << "\nTracks: "
    @tracks.each { |track| summary_outline << "\n - #{ track[:title] } " }
    summary_outline
  end

end
