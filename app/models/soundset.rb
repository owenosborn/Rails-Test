class Soundset < ApplicationRecord
  has_many_attached :sounds
  
  attr_accessor :remove_soundset

  #validate :sounds_validation

  after_save :purge_soundset, if: :remove_soundset
  
  private 
  
  def purge_soundset
    sounds.purge
  end

  def sounds_validation
    return unless sounds.attached?
    
	sounds.each do |sound| 
	  if not sound.blob.filename == '1.wav'
        sound.purge
        errors.add(:sounds, 'bad name')
        return false
      end
    end
    return true
  end

end
