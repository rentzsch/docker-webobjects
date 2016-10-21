FROM openjdk:8-jre

RUN wget http://webobjects.mdimension.com/wolips/WOInstaller.jar && \
    java -jar WOInstaller.jar 5.4.3 /opt && \
    rm WOInstaller.jar && \
    chmod u+x /opt/Library/WebObjects/JavaApplications/wotaskd.woa/Contents/Resources/SpawnOfWotaskd.sh && \
    chmod u+x /opt/Library/WebObjects/JavaApplications/wotaskd.woa/wotaskd && \
    chmod u+x /opt/Library/WebObjects/JavaApplications/JavaMonitor.woa/JavaMonitor
