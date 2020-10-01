class Movie < ApplicationRecord
  validates :title, :mpaa_rating, :runtime, :poster_image, presence: true
  validates :runtime, numericality: true

  def self.all_mpaa_ratings
    %w(G PG R NR)
  end

  validates :mpaa_rating, inclusion: { in: Movie.all_mpaa_ratings }

  has_many :cast_members
  belongs_to :genre, optional: true

scope :in_theaters, -> { where(placement: 'in_theaters') }
scope :coming_soon, -> { where(placement: 'coming_soon') }
scope :go_now, -> { where(placement: 'go_now') }

def runtime_hours
  unless runtime.nil?
    "#{runtime/60}hrs.#{runtime%60}min."
end
end

def cast
  cast_members.map { |c| c.name }.join(", ") unless cast_members.nil?
end
end
