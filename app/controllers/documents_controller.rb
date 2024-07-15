class DocumentsController < ApplicationController

  def download_cv
    send_file("#{Rails.root}/public/Arpan_CV_24_rails.pdf", filename: 'arpan_goswami_CV_24.pdf',
    content_type: "application/pdf", disposition: 'attachment' )
  end

end
