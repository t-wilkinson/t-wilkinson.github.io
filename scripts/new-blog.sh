post_name="$@"
post_file_name="$@"
typeset -l post_file_name
post_file_name="${post_file_name// /-}"

cat <<EOF >_posts/$(date +"%Y-%m-%d")-${post_file_name}.md
---
layout: post
title: ${post_name}
date: $(date +"%Y-%m-%d %H:%M:%S")
description:
tags:
categories:
---
EOF
