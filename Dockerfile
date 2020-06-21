FROM centos

RUN yum install java-11-openjdk-devel -y
RUN yum install wget -y
RUN yum install sudo -y
RUN yum install systemd -y
RUN wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
RUN rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
RUN yum install jenkins -y 
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
RUN chmod +x ./kubectl
RUN sudo mv ./kubectl /usr/local/bin/kubectl
RUN yum install openssh-server -y
RUN sudo yum install git -y
RUN echo -e "jenkins ALL=(ALL) NOPASSWD:ALL">> /etc/sudoers
RUN sudo yum install -y yum-utils 
RUN sudo yum-config-manager     --add-repo     https://download.docker.com/linux/centos/docker-ce.repo
RUN sudo yum install docker-ce docker-ce-cli containerd.io -y
RUN mkdir /root/.kube/
ADD ./.kube/ /root/.kube/
RUN mkdir /root/.minikube/
ADD ./.minikube/ /root/.minikube/
USER jenkins
ENV JENKINS_USER jenkins
EXPOSE 8080
EXPOSE 22
CMD ["/usr/sbin/sshd","-D"
CMD ["java","-jar","/usr/lib/jenkins/jenkins.war"]
