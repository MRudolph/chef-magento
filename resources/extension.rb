# Chef 0.10.10 or greater
default_action :install

# In earlier versions of Chef the LWRP DSL doesn't support specifying
# a default action, so you need to drop into Ruby.
def initialize(*args)
  super
  @action = :install
end

actions :install
attribute :channel, :kind_of => String, :name_attribute => true
