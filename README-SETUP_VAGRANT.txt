���������������� ���������� ������������� ��������:
1.) Install vagrant 
2.) Install virtualbox
3.) ������� ��� directory (���� ����������� ��� vagrant ��� �� path ���� �������� ����������)
4.) ��������:
	vagrant box add hashicorp/precise32
	vagrant plugin install vagrant-vbguest
	vagrant up (�������)
	vagrant ssh (������� ��� ssh client �� ��������. ��� windows �� putty, ������������� �� 
		     puttygen ��� �� ������������� �� ������ ��� ���� ��� ����� ��� ������� �� putty)
5.) ���� ����� forward to 80 -> 8080 �������� �� site �� http://localhost:8080/diplomatiki
