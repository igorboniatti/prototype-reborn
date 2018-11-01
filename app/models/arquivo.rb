class Arquivo < ApplicationRecord
	has_attached_file :arq
	validates_attachment_content_type :arq,
    content_type: ["image/png", "image/jpg", "image/jpeg"]
end
