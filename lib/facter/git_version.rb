# git_version.rb

Facter.add(:gitversion) do
    confine :kernel => 'Linux'
    setcode do
      git_version_results = Facter::Core::Execution.exec('/usr/bin/git --version')
      git_version = git_version_results.split(" ")
      git_version.last
    end
  end