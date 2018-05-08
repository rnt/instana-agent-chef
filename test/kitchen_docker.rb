require 'kitchen/driver/docker'

module Kitchen
  module Driver
    class Docker < Kitchen::Driver::SSHBase
      def login_command(state)
        LoginCommand.new(%W[
                           docker exec -it #{state[:container_id]} bash
                         ])
      end

      def rm_container(state)
        container_id = state[:container_id]
        docker_command("exec #{container_id} shutdown now")
        docker_command("wait #{container_id}") # Wait for shutdown
        docker_command("rm #{container_id}")
      end
    end
  end
end
