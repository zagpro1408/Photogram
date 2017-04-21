class Post < ApplicationRecord
    validates :image, presence: true

    # Редактирует размеры по ширине изобрадения на 640px
    has_attached_file :image, styles: { :medium => "640x" }
    validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
