class ubuntu_server::users {

	group { 'ubuntu':
		ensure		=> 'present'
	}

	user { 'ubuntu':
		ensure		=> 'present',
		managehome	=> true,
		shell		=> '/bin/bash',
		password	=> '*',
		require		=> Group['ubuntu'],
		gid			=> 'ubuntu'
	}

}
