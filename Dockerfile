# Copyright 2016 The Kubernetes Authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

FROM busybox:ubuntu-14.04

ADD ./guestbook-go/public/index.html /app/public/index.html
ADD ./guestbook-go/public/script.js /app/public/script.js
ADD ./guestbook-go/public/style.css /app/public/style.css

WORKDIR /app
CMD ["./guestbook"]
EXPOSE 3000
