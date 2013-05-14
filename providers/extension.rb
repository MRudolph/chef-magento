action :install do
  execute "Install extension #{new_resource.name}" do
    cwd node["magento"]["dir"]
    user "root"
    command "./mage install #{new_resource.channel || "http://connect20.magentocommerce.com/community"} #{new_resource.name}"
    not_if do
      system("cd #{node["magento"]["dir"]} && ./mage list-installed | grep  '#{new_resource.name}'")
    end
  end
  new_resource.updated_by_last_action(true)
end
