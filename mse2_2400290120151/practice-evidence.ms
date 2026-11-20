.\" Generated practice evidence report
.OH 'MSE-II Docker Lab' 'Set A' '%'
.EH 'Mayank Bisht - 2400290120151' 'Practice Evidence' '%'
.PP
.B "MSE-II: Docker & Docker Compose Debugging Lab (Set A)"
.br
.B "Practice Evidence Report"
.PP
Name: mayank bisht
.br
Roll No: 2400290120151
.br
Section: CS-'C'
.PP
I, mayank bisht, Roll No 2400290120151, declare that this practice work is my own.
.PP
.B "Step 0"
.br
Project folder: mse2_2400290120151
.br
Files created: .env, index.html, Dockerfile, docker-compose.yml
.PP
.B "Q1: Find and fix four mistakes"
.PP
.B "Q1(a) - E1/E2/E3"
.br
E1: Docker Compose reported that services.web.port failed schema validation.
.br
E2: I changed port to ports because Compose expects the plural key for a list of published ports.
.br
E3: The corrected compose file used ports and the build continued to the Dockerfile.
.PP
.B "Q1(b) - E1/E2/E3"
.br
E1: Docker could not find the image nginx:alpne.
.br
E2: I changed alpne to alpine because alpine is the valid nginx image tag.
.br
E3: The image metadata loaded successfully after the correction.
.PP
.B "Q1(c) - E1/E2/E3"
.br
E1: The build reported that /index.htm was not found.
.br
E2: I changed index.htm to index.html because the actual web page file is named index.html.
.br
E3: The image built successfully after correcting the COPY source.
.PP
.B "Q1(d) - E1/E2/E3"
.br
E1: The published port mapped the host to container port 8080, so the page did not open.
.br
E2: I changed 8080 to 80 because nginx listens on port 80 inside the container.
.br
E3: curl http://localhost:8051 printed the page successfully.
.PP
.B "Q2: Start a second container by hand"
.br
Command: docker run -d --name second-2400290120151 -p 8052:80 web-2400290120151:v1
.br
curl http://localhost:8052 printed the page.
.br
docker ps showed web-2400290120151 on 8051->80 and second-2400290120151 on 8052->80.
.br
The second container was removed with docker rm -f second-2400290120151.
.PP
.B "Q3: Improve the compose file"
.br
The compose file binds ./site to /usr/share/nginx/html as read-only.
.br
curl without --build printed: Edited without rebuild
.br
The environment entry maps STUDENT_ROLL to ${ROLL_NO}.
.br
docker exec web-2400290120151 printenv STUDENT_ROLL printed 2400290120151.
.PP
.B "Q4: Health check"
.br
The health check runs wget -q -O /dev/null http://127.0.0.1:80/ every 10 seconds, with a 3 second timeout and 3 retries.
.br
docker compose ps showed: Up 22 seconds (healthy).
.br
The check uses port 80 because it runs inside the container, where nginx listens on its internal port. HOST_PORT is only the host-side published port used to reach the container from outside.
.PP
.B "Verification"
.br
Final docker compose config validation succeeded. The website, bind mount, environment variable, and health check were all verified.
