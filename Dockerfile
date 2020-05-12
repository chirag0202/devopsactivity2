FROM centos

RUN yum install java-11-openjdk-devel -y
RUN yum install wget -y
RUN wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
RUN rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
RUN yum install jenkins -y 

RUN echo -e "jenkins ALL=(ALL) NOPASSWD:ALL">> /etc/sudoers
USER jenkins
ENV JENKINS_USER jenkins
EXPOSE 8080

CMD ["java","-jar","/usr/lib/jenkins/jenkins.war"]
