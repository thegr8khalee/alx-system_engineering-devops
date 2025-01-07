Postmortem

Issue Summary
Duration of Outage: August 10, 2024, 14:00 - 16:30 UTC
Impact: "KidLearn" went on an unexpected field trip for 2 hours and 30 minutes. Sadly, it wasn't educational—100% of our users were left scratching their heads instead of learning. No one could access the platform, which means no lessons, no quizzes, and a lot of frustrated parents and teachers.

Root Cause: A little typo in the HAProxy configuration sent all the traffic to one lonely server, which couldn't handle the party. It crashed, and so did our service.

Timeline
14:00 UTC: The platform decided to take a nap. Monitoring alerts showed a sudden drop in activity—cue the panic.
14:05 UTC: An engineer, who was just about to grab a coffee, noticed the issue. Goodbye, coffee break.

Root Cause and Resolution
The outage was caused by a single character typo in the HAProxy configuration file. This typo led to all incoming traffic being directed to one server instead of being distributed across multiple servers. Imagine planning a party and forgetting to send invitations to half your friends—that's what happened here. The one server that received all the traffic just couldn't handle the load, and it decided to tap out, taking the entire platform down with it.

The resolution was a quick (but not-so-easy) fix: identify the typo, correct the configuration, and redistribute the traffic. Once the proper configuration was in place, HAProxy resumed its job as the traffic conductor, and our servers started playing the right tune again.

Corrective and Preventative Measures
Improvements:

Configuration Review Process: No more solo performances. Every configuration change will now require a peer review.
Redundancy and Failover: Because one is the loneliest number, we're adding a backup load balancer to avoid single points of failure.
Enhanced Monitoring: We're adding traffic distribution alerts to catch any imbalances before they become a problem.
Tasks:

Patch HAProxy Configuration: Fix the typo. Triple-check it. Frame it on the wall as a reminder.
Add Peer Review for Configurations: Implement a mandatory peer review process. No more lone wolves.
Deploy Redundant Load Balancers: Set up a backup HAProxy instance, so we have a plan B (and C).
Monitor Load Distribution: Add metrics to monitor how traffic is spread across servers. No server left behind.
Conduct Load Testing: Regularly stress-test our servers to make sure they can handle unexpected traffic.
By learning from this typo-tastrophe, we'll be better prepared to keep KidLearn running smoothly, ensuring that our users can focus on learning, not waiting.




Background Context


Any software system will eventually fail, and that failure can come stem from a wide range of possible factors: bugs, traffic spikes, security issues, hardware failures, natural disasters, human error… Failing is normal and failing is actually a great opportunity to learn and improve. Any great Software Engineer must learn from his/her mistakes to make sure that they won’t happen again. Failing is fine, but failing twice because of the same issue is not.

A postmortem is a tool widely used in the tech industry. After any outage, the team(s) in charge of the system will write a summary that has 2 main goals:

To provide the rest of the company’s employees easy access to information detailing the cause of the outage. Often outages can have a huge impact on a company, so managers and executives have to understand what happened and how it will impact their work.
And to ensure that the root cause(s) of the outage has been discovered and that measures are taken to make sure it will be fixed.
Resources
Read or watch:

Incident Report, also referred to as a Postmortem
The importance of an incident postmortem process
What is an Incident Postmortem?
More Info
Manual QA Review
It is your responsibility to request a review for your postmortem from a peer before the project’s deadline. If no peers have been reviewed, you should request a review from a TA or staff member.

Tasks
0. My first postmortem
mandatory
Score: 100.0% (Checks completed: 100.0%)


Using one of the web stack debugging project issue or an outage you have personally face, write a postmortem. Most of you will never have faced an outage, so just get creative and invent your own :)

Requirements:

Issue Summary (that is often what executives will read) must contain:
duration of the outage with start and end times (including timezone)
what was the impact (what service was down/slow? What were user experiencing? How many % of the users were affected?)
what was the root cause
Timeline (format bullet point, format: time - keep it short, 1 or 2 sentences) must contain:

when was the issue detected
how was the issue detected (monitoring alert, an engineer noticed something, a customer complained…)
actions taken (what parts of the system were investigated, what were the assumption on the root cause of the issue)
misleading investigation/debugging paths that were taken
which team/individuals was the incident escalated to
how the incident was resolved
Root cause and resolution must contain:

explain in detail what was causing the issue
explain in detail how the issue was fixed
Corrective and preventative measures must contain:

what are the things that can be improved/fixed (broadly speaking)
a list of tasks to address the issue (be very specific, like a TODO, example: patch Nginx server, add monitoring on server memory…)
Be brief and straight to the point, between 400 to 600 words

While postmortem format can vary, stick to this one so that you can get properly reviewed by your peers.

Please, remember that these blogs must be written in English to further your technical ability in a variety of settings.

Add URLs here:
https://github.com/thegr8khalee/alx-system_engineering-devops/tree/master/0x19-postmortem 
Repo:

GitHub repository: alx-system_engineering-devops
Directory: 0x19-postmortem
File: README.md
1. Make people want to read your postmortem
#advanced
Score: 100.0% (Checks completed: 100.0%)
We are constantly stormed by a quantity of information, it’s tough to get people to read you.

Make your post-mortem attractive by adding humour, a pretty diagram or anything that would catch your audience attention.

Please, remember that these blogs must be written in English to further your technical ability in a variety of settings.

Add URLs here:
https://github.com/thegr8khalee/alx-system_engineering-devops/tree/master/0x19-postmortem 
Repo:

GitHub repository: alx-system_engineering-devops
Directory: 0x19-postmortem
File: README.md