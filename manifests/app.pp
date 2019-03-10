node 'node1' {
  
  include base

  class { '::tomcat': 
    user => 'tomcat',
    group => 'tomcat',
    service_state => 'running'
  }

  tomcat::deploy { "sysfoo":
    deploy_url => 'https://11-174440744-gh.circle-artifacts.com/0/home/circleci/repo/target/sysfoo.war',
    checksum_value => '0ba945b10be51e5d15cf0a178245727a',
  }

}

node 'node2' {

  include base

  class { '::tomcat': 
    user => 'tomcat',
    group => 'tomcat',
    service_state => 'running'
  }

  tomcat::deploy { "sysfoo":
    deploy_url => 'https://11-174440744-gh.circle-artifacts.com/0/home/circleci/repo/target/sysfoo.war',
    checksum_value => '0ba945b10be51e5d15cf0a178245727a',
  }
  
}

node default {
  
  notify { 'checkpoint_1': 
    message => "

      CHECKPOINT_!

      Applying default BLOCK
      Looks like there is no definition for this node.... 

    "
  } 
  

}
