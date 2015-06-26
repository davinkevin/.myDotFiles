function authme
        ssh $argv 'mkdir -p ~/.ssh; cat >> ~/.ssh/authorized_keys'< ~/.ssh/id_rsa.pub;
        ssh $argv
end
