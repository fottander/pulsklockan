class KontaktasController < ApplicationController
  def index
    add_breadcrumb 'Hem', :root_path
    add_breadcrumb 'Kontakta oss'
  end
end
