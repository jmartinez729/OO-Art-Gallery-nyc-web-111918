class Artist
  attr_reader :name, :years_experience
  attr_accessor :paintings_per_year

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience

    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select do |painting|
      painting.artist == self
    end
  end

  def galleries
    self.paintings.map do |painting|
      painting.gallery
    end
  end

  def cities
    self.galleries.map do |gallery|
      gallery.city
    end
  end

  def self.total_experience
    years = 0
    Artist.all.each do |artist|
      years += artist.years_experience
    end
    years
  end

  def number_of_paintings
    self.paintings.count
  end

  def ppy
    self.number_of_paintings.to_f / self.years_experience.to_f
  end
  #
  # @@all_with_ppy = []
  #
  # def self.set_all_ppy
  #   Artist.all.each do |artist|
  #     @@all_with_ppy << artist.set_paintings_per_year
  #   end
  # end

  def self.most_prolific
    most_prolific = nil
    Artist.all.each do |artist|
      if most_prolific == nil || artist.ppy > most_prolific.ppy
        most_prolific = artist
      end
    end
    most_prolific
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end






end
