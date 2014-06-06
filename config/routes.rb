Authpuppy::Application.routes.draw do
  root to: "admins#login"
  post "create_login_session" => "admins#create_login_session"
  delete "logout" => "admins#logout", :as => "logout"

  resources :access_nodes
  get "access_nodes/:id/advanced" => "access_nodes#advanced", :as => "advance"
  get "access_nodes/:id/init" => "access_nodes#init", :as => "init"
  get "access_nodes/:id/firewall" => "access_nodes#firewall", :as => "firewall"
  post "access_nodes/setconfig" => "access_nodes#setconfig"

  get "ding" => "wifidog#ping"
  get "retrieve" => "wifidog#retrieve"
  get "fetchconf" => "wifidog#fetchconf"
  get "gw_message.php" => "wifidog#denied"
  get "wifiauth" => "wifidog#auth"
  get "wifilogin" => "user#login"
  get "post/:aunnum" => "wifidog#authupdate"
  get "portal" => "user#portal"
  post "authenticate" =>"user#authenticate"
  post "freeland" =>"user#freeland"
  get "logout/:token" =>"user#logout", :as => "offline"
  post "bindurl" =>"guest#bindurl"
  post "query_lat_long" => "access_nodes#query_lat_long"
  post "auth_update" => "auth#update"
  post "conf_update" => "conf#update"
  get "timeline" => "activity#timeline", :as => "timeline"
  post "showconnections" => "guest#show_connections"
  post "update_auth_type" => "guest#update_auth_type"
  post "update_auth_device" => "guest#update_auth_device"
  post "update_access_time" => "guest#update_access_time"
  post "update_cmdline" => "guest#update_cmdline"
  post "update_conf" => "guest#update_conf"
  post "update_publicip" => "guest#update_publicip"
  post "create_address" => "guest#create_address"
  post "tmac_add" => "firewall#tmac_add"
  get  "tmac_del/:id" => "firewall#tmac_del", :as => "macdel"
  post "bmac_add" => "firewall#bmac_add"
  get  "bmac_del/:id" => "firewall#bmac_del", :as => "bmacdel"
  post "ip_add" => "firewall#ip_add"
  get  "ip_del/:id" => "firewall#ip_del", :as => "ipdel"
  get "indexconn" => "guest#index"

end
