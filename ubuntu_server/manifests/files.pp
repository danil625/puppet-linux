class ubuntu_server::files {

    file { '20auto-upgrades':
        path    => '/etc/apt/apt.conf.d/20auto-upgrades',
        ensure  => file,
        mode    => 0644,
        owner   => 'root',
        group   => 'root',
        require => Package['unattended-upgrades'],
        content => template('ubuntu_server/20auto-upgrades.erb')
    }

    file { 'root_authorized_keys':
        path	=> '/root/.ssh/authorized_keys',
        ensure	=> present,
        mode	=> 0600,
        owner	=> 'root',
        group	=> 'root'
    }

    file { 'ubuntu_authorized_keys':
        path	=> '/home/ubuntu/.ssh/authorized_keys',
        ensure	=> present,
        mode	=> 0600,
        owner	=> 'ubuntu',
        group	=> 'ubuntu'
    }

    file { 'sudoer-ubuntu':
    	path	=> '/etc/sudoers.d/ubuntu-user',
    	ensure	=> present,
        mode	=> 0440,
        owner	=> 'root',
        group	=> 'root',
        content	=> 'ubuntu ALL=(ALL) NOPASSWD:ALL',
		require => Package['sudo']
    }

#	REQUIRES the key-auth configured first!
#	file_line { 'sshd_nopassw':
#		path    => '/etc/ssh/sshd_config',
#		line    => 'PasswordAuthentication no'
#	}

	file_line { 'sshd_allow-users':
		path    => '/etc/ssh/sshd_config',
		line    => 'AllowUsers root ubuntu'
	}


	file_line { 'apt_autoremove':
		path    => '/etc/apt/apt.conf.d/50unattended-upgrades',
		line    => 'Unattended-Upgrade::Remove-Unused-Dependencies "true";',
		require => Package['unattended-upgrades']
	}

	file_line { 'apt_autoreboot':
		path    => '/etc/apt/apt.conf.d/50unattended-upgrades',
		line    => 'Unattended-Upgrade::Automatic-Reboot "true";',
		require => Package['unattended-upgrades']
	}

}
