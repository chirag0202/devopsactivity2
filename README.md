# devopsactivity2
This is the dockerfile for an activity that I did for my DevOps Assembly Lines Training under the mentorship of Mr. Vimal Daga Sir.

Activity Statement:
1. Create container image that’s has Jenkins installed using dockerfile 

2. When we launch this image, it should automatically starts Jenkins service in the container.

3. Create a job chain of job1, job2, job3 and job4 using build pipeline plugin in Jenkins 

4. Job1 : Pull the Github repo automatically when some developers push repo to Github.

5. Job2 : By looking at the code or program file, Jenkins should automatically start the respective language interpreter install image container to deploy code ( eg. If code is of PHP, then Jenkins should start the container that has PHP already installed ).

6. Job3 : Test your app if it is working or not.

7. Job4 : if app is not working , then send email to developer with error messages.

8. Create One extra job job5 for monitor : If container where app is running. fails due to any reson then this job should automatically start the container again.


The details of the project can be found in this article 
https://www.linkedin.com/pulse/automation-using-jenkins-docker-devops-activity-2-chirag-chaudhuri/?trackingId=sRkEF%2FGbQ8G3oI%2FA9OkTiA%3D%3D
