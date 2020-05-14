class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCn8U7PKR4uUW3+Mq2Xi6O7hAFep7G+2iN16MMhIo6KuSQJrTsqijYatr0ppaWbpjBiHzgPJKlwu0BUxG6G+Mmmls1+EPTTzEVwK+TynQUGRpIpex2iS484QnGxqGxUoUBwAjItZ9OzdtNglbrJCjNO+tRhhyuYy/69ZKHalFMzkszI9b30rXnyylvT8ThB39l8TInlcy6Rnb737NI+j5ZaKTYz6Qpmf0nJuJtl4D1Cq1J9DHosNU7j2kYj8pCx24rX0R2Qc//TOnux4NZxfMpX+qFyuuk1OaG3JEBr+s4d3a18A/IrkTPby0J5r6fFOzIKB8056RZQpu0oF3ML3b9l',
	}  
}
