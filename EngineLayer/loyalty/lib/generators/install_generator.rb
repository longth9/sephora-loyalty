class InstallGenerator < Rails::Generators::Base
  source_root File.expand_path("../templates", __FILE__)

  desc "This generator copye vue's required files into main application"
  def copy_vue_file
    # BEGIN INSTALL CODE
    template './javascript/userprofile.vue', 'app/javascript/userprofile.vue'
    template './javascript/packs/userprofile.js', 'app/javascript/packs/userprofile.js'
    # END INSTALL CODE
  end

  def setup_routes
    route "mount Loyalty::Engine, at: '/loyalty'"
  end
end
