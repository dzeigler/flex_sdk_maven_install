#!/bin/sh
export MAVEN_OPTS=-Xmx1024m
zip flex_sdk_4.5.0.19786.zip empty.swc

mvn org.sonatype.plugins:bundle-publisher-maven-plugin:1.1:deploy-bundle -Dbundle=flex_sdk_4.5.0.19786.zip -Ddescriptor=flex4.5.0.19786.framework.descriptors.xml -Durl=http://www.flashnexus.org/nexus/content/repositories/releases -DrepositoryId=flashnexus
mvn org.sonatype.plugins:bundle-publisher-maven-plugin:1.1:deploy-bundle -Dbundle=flex_sdk_4.5.0.19786.zip -Ddescriptor=flex4.5.0.19786.compiler.descriptors.xml -Durl=http://www.flashnexus.org/nexus/content/repositories/releases -DrepositoryId=flashnexus