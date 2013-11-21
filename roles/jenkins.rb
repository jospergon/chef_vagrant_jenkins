name "jenkins"

default_attributes(
  :rvm => {
    :rubies => ["1.9.3"],
    :default_ruby => "1.9.3",
    :gem_package => {
      :rvm_string => "1.9.3"
    }
  }
)

override_attributes(
  :jenkins => {
    :server => { :plugins => ["git", "github"] }
  }
)

run_list(
  "recipe[rvm::system]",
  "recipe[rvm::vagrant]",
  "recipe[rvm::gem_package]",
  "recipe[jenkins::server]",
  "recipe[jenkins::proxy]",
  "recipe[git]",
  "recipe[jenkins_plugins]"
)
