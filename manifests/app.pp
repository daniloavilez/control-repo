hiera_include('classes')

node 'node3' {
  
  # include base

  include tomcat

  tomcat::deploy { "sysfoo":
    deploy_url => 'https://11-174440744-gh.circle-artifacts.com/0/home/circleci/repo/target/sysfoo.war',
    checksum_value => '0ba945b10be51e5d15cf0a178245727a',
  }

}








    
  
 



  










  


