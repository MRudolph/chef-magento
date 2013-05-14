file node["magento"]["dir"]+"/mage" do
  owner "root"
  group "root"
  mode "0755"
  action :create_if_missing
end
