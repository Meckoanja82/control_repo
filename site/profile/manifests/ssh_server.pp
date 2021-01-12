class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service {'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key {'root@master.puppet.vm':
    ensure => present,
    user => 'root',
    type => 'ssh-rsa',
    key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDT9/LKce16g6d2cxIeFt8dZjwI0lff9ip51DVCPpNkEdYOydWVW+RuicqDNxn4WxIpKwMhzEuq6bZBpC+K6OwSvdYoRtCghj8yj47805XSzYJtMWhekgzXW2VOT/idWYy3Z4Xewj5UYSKtVMhf/LZl08vjYwnvTfa8qbb2H06Zbm0U+5M7qH7CmMSXh2v00bQl98Lvd8CUbLSyA/+zY8dinffVFbMJv9ug2/ENqdOD9o3dnPHcb8XuaOtpJrEadc7hT1Vd8gaKNM48RJJPyPcP/QXf/7cUvTp1xvxJSzcGHWdJj0c0ve4M464UDsywXYpyODmCzXCH5SFpFiseoLWP',
}
