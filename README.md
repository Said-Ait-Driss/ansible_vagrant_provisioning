# Ansible Vagrant Prodvisioning

<p> provisioning two virtual maching with ansible and shell scripts </p>

## Birds Eye view

<ol>
    <li>Create two ubuntu vm maching with vagrant </li>
    <li>updating vm repository packages and install ansible using shell script </li>
    <li>installing apache 2 on master server</li>
    <li>copy of hello.master.html file to apache 2 default served file</li>
    <li>installing nginix on slave(s) server</li>
    <li>copy of slave.master.html file to nginx default served file</li>
</ol>

## Next improvements:
1 - install jenkins on master server
<br>
2 - make a jenkins pipline to execute a ansible playbook
3 - deploy a code to slave servers
