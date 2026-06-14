FROM twentycrm/twenty:latest
COPY custom-sidebar.css /app/packages/twenty-server/dist/front/custom-sidebar.css
RUN sed -i 's|</head>|<link rel="stylesheet" href="/custom-sidebar.css"></head>|' /app/packages/twenty-server/dist/front/index.html
