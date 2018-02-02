# Start Xvfb
Xvfb ${DISPLAY} -ac +iglx -screen 0 750x1334x24 -nolisten tcp & xvfb=$!

printf "Starting xvfb window server..."

while [  1 -gt $xvfb  ]; do printf "..."; sleep 1; done

printf "xvfb started\n\n"

pytest --html=results/index.html -x
