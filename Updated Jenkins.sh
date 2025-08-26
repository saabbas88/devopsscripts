#STEP-1: Installing Git and Maven
sudo apt update
sudo apt install git maven -y

#STEP-2: Repo Information (jenkins.io --> download -- > ubuntu)
sudo wget -O /etc/apt/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo "deb [signed-by=/etc/apt/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins

#STEP-3: Download Java 21 and Jenkins
sudo apt update
sudo apt install fontconfig openjdk-21-jre

#STEP-4: Start and check the JENKINS Status
sudo systemctl enable jenkins
sudo systemctl start jenkins
sudo systemctl status jenkins
