Vagrant.require_version '>= 1.6.5'

if (defined?(@required_plugins))
  @required_plugins.each do |plugin|
    unless Vagrant.has_plugin?(plugin)
      system("vagrant plugin install #{plugin}")
    end
  end
end

