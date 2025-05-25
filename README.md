# 🌍 Luxe Escapes – Luxury Travel React Web App Deployment Using DevOps Practices

A visually engaging and performant luxury travel booking platform built with **React** and deployed using modern **DevOps** practices on AWS. This project demonstrates the implementation of a scalable and automated CI/CD pipeline using infrastructure-as-code, containerization, monitoring, and cloud deployment.

---

## 📖 Overview

**Luxe Escapes** is a static React-based luxury travel web app designed to showcase premium travel destinations and services. The application emphasizes elegance, speed, and reliability by leveraging AWS and DevOps tools for efficient deployment and operations.

This project includes:

- A responsive React frontend hosted on AWS.
- Dockerized static Node.js server for serving the build files.
- CI/CD pipeline using GitHub Actions.
- Infrastructure provisioning via Terraform.
- Kubernetes-based deployment using EKS.
- Full observability stack with Prometheus and Grafana.

---

## 🚀 Features

- ✈️ Visually stunning frontend for luxury travel experiences
- 🌐 Static hosting with optimized delivery
- 🐳 Docker-based Node.js server
- ⚙️ CI/CD with GitHub Actions
- 📦 Infrastructure as Code using Terraform
- ☸️ Container orchestration with Kubernetes (EKS)
- 📈 Monitoring using Prometheus & Grafana
- 🔐 Secure and scalable AWS cloud deployment

---

## 🧰 Tech Stack

- **Frontend**: HTML5, CSS3, JavaScript, React
- **Backend**: Node.js + Express (for static file serving)
- **CI/CD**: GitHub Actions
- **Containerization**: Docker
- **Infrastructure**: Terraform
- **Orchestration**: Kubernetes (AWS EKS)
- **Monitoring**: Prometheus, Grafana
- **Cloud**: AWS (S3, EC2, ECR, EKS, CloudWatch)

---

## 📁 Project Structure

```bash
travel-web-app/
├── public/
│   └── index.html
├── src/
│   ├── App.css
│   ├── App.js
│   ├── index.css
│   ├── index.js
│   └── style.css
├── package.json
├── package-lock.json
├── TravelWebAppDevops.pdf
└── README.md
````

---

1. ## ⚙️ Setup Instructions

2. **Fork the repository** 
- Go to the original repo: [sparknet-innovations/travel-web-app](https://github.com/VAISHNAVIP0419/travel-web-app.git)
- Click **Fork** in the top-right to create your own copy.
  
3. **Clone a repo to local**
![Screenshot 2025-05-24 232110](https://github.com/user-attachments/assets/b8aa1562-1148-4c10-bc10-e13648cf299c)

![Screenshot 2025-05-24 232126](https://github.com/user-attachments/assets/becab73b-e95a-429a-ac3e-fd3ca958f534)

3. **Create a new branch**

```bash
git checkout -b feature/update-readme
```
![Screenshot 2025-05-24 232229](https://github.com/user-attachments/assets/489bf2aa-eb09-47a0-af78-f999a7d3cc06)

4.  **Install dependencies**
   
*Install necessary tools:* 
- Docker 
- Kubernetes 
- Terraform 
- AWS CLI

![Screenshot 2025-05-24 231910](https://github.com/user-attachments/assets/64d8a301-665c-4aae-91d0-d9cf2279209d)

## Terraform Infrastructure Setup

**create Terraform files :**
       
```bash
terraform/
├── main.tf
├── variables.tf
├── provider.tf
├── backend.tf
├── terraform.tfvars
└── modules/
    ├── vpc/
    │   ├── vpc.tf
    │   ├── variables.tf
    │   └── outputs.tf
    ├── ec2/
    │   ├── ec2.tf
    │   ├── variables.tf
    │   └── outputs.tf
    ├── iam/
    │   ├── iam.tf
    │   └── outputs.tf
    └── sg/
        ├── security.tf
        ├── variables.tf
        └── outputs.tf
```


i) **Initialize Terraform**


```bash
cd terraform
       
terraform init
```
![Screenshot 2025-05-25 163533](https://github.com/user-attachments/assets/666994e8-136e-4b13-8d73-55b1c647bf4d)

![Screenshot 2025-05-25 163553](https://github.com/user-attachments/assets/16d01006-a644-479a-b72f-a0e42561d6a8)

ii) **View the Execution Plan**

```bash
terraform plan
```
![Screenshot 2025-05-25 163638](https://github.com/user-attachments/assets/c74e81c4-e83a-4f1c-b35d-22310b070bc0)

![Screenshot 2025-05-25 163707](https://github.com/user-attachments/assets/5f857902-e330-443a-b4ef-cca7f513710c)

iii) **Apply the Configuration**
        
```bash
terraform apply
```
![Screenshot 2025-05-25 164000](https://github.com/user-attachments/assets/5b053a05-4cd0-4098-98ee-c846dd958ba8)

![Screenshot 2025-05-25 170126](https://github.com/user-attachments/assets/2fbac479-171e-46d9-889c-23c8523f0a41)


## Terraform Output

**Instances:**

![Screenshot 2025-05-25 170152](https://github.com/user-attachments/assets/52f78572-e80e-411e-8140-1a3438f87681)

**VPC:**

![Screenshot 2025-05-25 170223](https://github.com/user-attachments/assets/b056c1ae-6cde-469a-9993-d6628ea87d99)

**Subnets:**

![Screenshot 2025-05-25 170248](https://github.com/user-attachments/assets/f77e09db-663d-4b78-8a6b-7658dd522baf)


**Security Group:**

![Screenshot 2025-05-25 170336](https://github.com/user-attachments/assets/481d2e6c-f521-45c6-b52f-c93329ff940e)

iv) **Destroy Infra:**

```bash
terraform destroy
```
![Screenshot 2025-05-25 173213](https://github.com/user-attachments/assets/0e7114f9-dea2-4646-9b75-bdc7aa0ec4f0)


## Dockerization of the Flask Application

5. **created .gitignore file**
    
(This tells Git what to ignore so these files aren't pushed to the repository:)

6. **Create  .dockerignore file**
    
(This prevents unnecessary files from being copied into your Docker image)

7. **Create a Dockerfile files**
      
```bash
vim Dockerfile
cat Dockerfile
```
![Screenshot 2025-05-24 234001](https://github.com/user-attachments/assets/1285cf65-cb42-452d-8d26-38d2811983b0)

### Docker Setup

8. Open Docker Desktop from the Start menu and wait until it's fully initialized**

9. **Build the Docker image:**
      
```bash
docker build -t luxe-escapes:v1 .
```
![Screenshot 2025-05-25 171316](https://github.com/user-attachments/assets/dc08f605-bc84-4e66-ad3f-6278240eadf8)

10. **Run the container:**
      
```bash
docker run -itd -p 3000:80 luxe-escapes:v1
```
11. **Open your browser""
Visit http://localhost:30080 to see the app in action.

![Screenshot 2025-05-25 171457](https://github.com/user-attachments/assets/ab3f6ba5-f77e-48bb-a2d0-953d3ae461ca)

12. **Create AWS ECR**
- Login to aws cli 

![Screenshot 2025-05-25 191741](https://github.com/user-attachments/assets/fa5f6c3a-d14d-4d3f-a66b-70be353286b2)


13.  **Push to ECR:**

![Screenshot 2025-05-25 191930](https://github.com/user-attachments/assets/03dc7ea2-275d-4405-9e05-a54056f745ce)

14. **ECR Dashboard:**
![Screenshot 2025-05-25 192006](https://github.com/user-attachments/assets/a299a291-e1e8-4408-9820-4995e7ad35dd)



## Kubernetes Deployment

15.  **Kubernetes Manifests (in /k8s folder)**
    
- deployment.yaml: Deploys your React app container (Nginx + build) to the Kubernetes cluster.
- service.yaml: Exposes the deployed app to the Nodeport.
- configmap.yaml: Stores non-sensitive environment variables like API URLs.
- secret.yaml: Stores sensitive data like keys or passwords securely.

```bash
k8s/
├── deployment.yaml
├── service.yaml
├── configmap.yaml
└── secret.yaml
```

![image](https://github.com/user-attachments/assets/e71d559f-9dda-4102-8866-572ac9ca8dae)

16. **Deploying to Kubernetes**

**- Apply deployment:**

```bash
kubectl apply -f k8s/deployment.yml
```
![Screenshot 2025-05-25 200445](https://github.com/user-attachments/assets/c8a02b24-7a0d-4c48-b449-002dd1f44acb)

**- Apply service:**

```bash
kubectl apply -f k8s/service.yml
```

![Screenshot 2025-05-25 200634](https://github.com/user-attachments/assets/12dab7d6-cd70-4e29-821f-82f2738c0b71)


**- Apply configmap**

```bash
kubectl apply -f k8s/configmap.yml
```

![Screenshot 2025-05-25 200644](https://github.com/user-attachments/assets/56e33422-57cc-4996-8a7c-d0c90dd3bbe6)

**- Verify pods and service:**

```bash
kubectl get deployment
```

![Screenshot 2025-05-25 200703](https://github.com/user-attachments/assets/85fb62f0-1c7f-4f10-bf97-3848c4e60c8e)


```bash
kubectl get svc
```

![Screenshot 2025-05-25 200712](https://github.com/user-attachments/assets/4db22cc6-8f34-4f68-a42b-d40e34728890)




```bash
kubectl get pods
```

![Screenshot 2025-05-25 200653](https://github.com/user-attachments/assets/67a6159f-f93c-4e59-a6fb-77b47d61a4e6)




**- Accessing the Flask App**

```bash
minikube service luxe-react-service
```

![Screenshot 2025-05-25 200956](https://github.com/user-attachments/assets/5d44ca53-9744-41de-a8b8-1402af260a05)


![Screenshot 2025-05-25 201013](https://github.com/user-attachments/assets/69101b35-f194-42db-9c45-a3059cd2104e)


---
















