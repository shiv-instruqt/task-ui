# Install Docker and Deploy Flask Container

## Step 1: Update package index

```bash
apt update
```

---

## Step 2: Install required packages

```bash
apt install -y ca-certificates curl gnupg lsb-release
```

---

## Step 3: Create Docker keyring directory

```bash
mkdir -p /etc/apt/keyrings
```

---

## Step 4: Add Docker GPG key

```bash
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /etc/apt/keyrings/docker.gpg
```

---

## Step 5: Add Docker repository

```bash
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null
```

---

## Step 6: Update package index again

```bash
apt update
```

---

## Step 7: Install Docker Engine

```bash
apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
```

---

## Step 8: Enable Docker service

```bash
systemctl enable docker || true
```

---

## Step 9: Start Docker service

```bash
systemctl start docker || true
```

## Step 11: Pull Docker image

```bash
docker pull shivtushal/git-lab:python-app-1.0
```

---

## Step 12: Stop existing container (if running)

```bash
docker stop flask-app 2>/dev/null || true
```

---

## Step 13: Remove existing container (if present)

```bash
docker rm flask-app 2>/dev/null || true
```

---

## Step 14: Run Flask application container

```bash
docker run -d \
  --name flask-app \
  --restart unless-stopped \
  -p 5000:5000 \
  shivtushal/git-lab:python-app-1.0
```
