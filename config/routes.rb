MailsViewer::Engine.routes.draw do
  controller "home" do
    get "/index", action: :index, as: :mails_viewer_home_index
    get "/raw", action: :raw, as: :mails_viewer_home_raw
    get "/html", action: :html, as: :mails_viewer_home_html
    get "/plain", action: :plain, as: :mails_viewer_home_plain
    get '/attachment', action: :attachment, as: :mails_viewer_home_attachment
  end
  root to: 'home#index'
end
