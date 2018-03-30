class Game < ApplicationRecord
  belongs_to :category

  enum statuses: {
  	NOT_PLAYED: 0,
  	PLAYING:    1,
  	FINISHED:   2
  }
end