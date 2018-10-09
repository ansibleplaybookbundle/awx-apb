FROM ansibleplaybookbundle/apb-base

LABEL "com.redhat.apb.spec"=\
"dmVyc2lvbjogMS4wLjAKbmFtZTogYXd4LWFwYgpkZXNjcmlwdGlvbjogQVdYIEFQQiBJbXBsZW1l\
bnRhdGlvbgpiaW5kYWJsZTogRmFsc2UKYXN5bmM6IG9wdGlvbmFsCm1ldGFkYXRhOgogIGRpc3Bs\
YXlOYW1lOiBBV1ggKEFQQikKICBsb25nRGVzY3JpcHRpb246IEFuIEFQQiB0aGF0IGRlcGxveXMg\
QVdYCiAgZG9jdW1lbnRhdGlvblVybDogaHR0cHM6Ly9kb2NzLmFuc2libGUuY29tL2Fuc2libGUt\
dG93ZXIvCiAgZGVwZW5kZW5jaWVzOiBbJ2RvY2tlci5pby9sb3JidXNjb2RlL2F3eC1hcGI6bGF0\
ZXN0J10KcGxhbnM6CiAgLSBuYW1lOiBkZWZhdWx0CiAgICBkZXNjcmlwdGlvbjogQW4gQVBCIHRo\
YXQgZGVwbG95cyBBV1gKICAgIGZyZWU6IFRydWUKICAgIG1ldGFkYXRhOgogICAgICBkaXNwbGF5\
TmFtZTogRGVmYXVsdAogICAgICBsb25nRGVzY3JpcHRpb246IFRoaXMgcGxhbiBkZXBsb3lzIGEg\
c2luZ2xlIEFXWCBpbnN0YW5jZS4gUmVxdWlyZXMgYSBQb3N0Z3JlU1FMIERCIHRvIGJpbmQgdG8u\
CiAgICAgIGNvc3Q6ICQwLjAwCiAgICBwYXJhbWV0ZXJzOgogICAgICAtIG5hbWU6IGF3eF93ZWJf\
aW1hZ2UKICAgICAgICB0aXRsZTogQVdYIFdlYiBJbWFnZQogICAgICAgIGRlc2NyaXB0aW9uOiBE\
b2NrZXIgSW1hZ2Ugb2YgQVdYIFdlYgogICAgICAgIGRlZmF1bHQ6IGFuc2libGUvYXd4X3dlYgog\
ICAgICAgIHR5cGU6IHN0cmluZwogICAgICAgIHJlcXVpcmVkOiBUcnVlCiAgICAgIC0gbmFtZTog\
YXd4X3dlYl9pbWFnZV90YWcKICAgICAgICB0aXRsZTogQVdYIFdlYiBJbWFnZSBUYWcKICAgICAg\
ICBkZXNjcmlwdGlvbjogQVdYIFdlYiBEb2NrZXIgSW1hZ2UgVmVyc2lvbgogICAgICAgIGRlZmF1\
bHQ6IDEuMC4zCiAgICAgICAgdHlwZTogc3RyaW5nCiAgICAgICAgcmVxdWlyZWQ6IFRydWUKICAg\
ICAgLSBuYW1lOiBhd3hfdGFza19pbWFnZQogICAgICAgIHRpdGxlOiBBV1ggVGFzayBJbWFnZQog\
ICAgICAgIGRlc2NyaXB0aW9uOiBEb2NrZXIgSW1hZ2Ugb2YgQVdYIFRhc2sKICAgICAgICBkZWZh\
dWx0OiBhbnNpYmxlL2F3eF90YXNrCiAgICAgICAgdHlwZTogc3RyaW5nCiAgICAgICAgcmVxdWly\
ZWQ6IFRydWUKICAgICAgLSBuYW1lOiBhd3hfdGFza19pbWFnZV90YWcKICAgICAgICB0aXRsZTog\
QVdYIFRhc2sgSW1hZ2UgVGFnCiAgICAgICAgZGVzY3JpcHRpb246IEFXWCBUYXNrIERvY2tlciBJ\
bWFnZSBWZXJzaW9uCiAgICAgICAgZGVmYXVsdDogMS4wLjMKICAgICAgICB0eXBlOiBzdHJpbmcK\
ICAgICAgICByZXF1aXJlZDogVHJ1ZQogICAgICAtIG5hbWU6IGF3eF9hZG1pbl91c2VyCiAgICAg\
ICAgdGl0bGU6IEFXWCBBZG1pbiBVc2VyCiAgICAgICAgZGVzY3JpcHRpb246IEFXWCBBZG1pbiBV\
c2VyCiAgICAgICAgZGVmYXVsdDogYWRtaW4KICAgICAgICB0eXBlOiBzdHJpbmcKICAgICAgICBy\
ZXF1aXJlZDogVHJ1ZQogICAgICAtIG5hbWU6IGF3eF9hZG1pbl9wYXNzd29yZAogICAgICAgIHRp\
dGxlOiBBV1ggQWRtaW4gUGFzc3dvcmQKICAgICAgICB0eXBlOiBzdHJpbmcKICAgICAgICBkaXNw\
bGF5X3R5cGU6IHBhc3N3b3JkCiAgICAgICAgcmVxdWlyZWQ6IFRydWUKICAgICAgLSBuYW1lOiBh\
d3hfc2VjcmV0X2tleQogICAgICAgIHRpdGxlOiBBV1ggU2VjcmV0IEtleQogICAgICAgIGRlZmF1\
bHQ6IGF3eHNlY3JldAogICAgICAgIHR5cGU6IHN0cmluZwogICAgICAgIHJlcXVpcmVkOiBUcnVl\
Cg=="

COPY playbooks /opt/apb/actions
COPY roles /opt/ansible/roles
RUN chmod -R g=u /opt/{ansible,apb}
USER apb
