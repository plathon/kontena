module Kontena::Cli::Nodes::Labels
  class RemoveCommand < Kontena::Command
    include Kontena::Cli::Common

    parameter "NODE_ID", "Node id"
    parameter "LABEL ...", "Labels"

    requires_current_master
    requires_current_master_token
    requires_current_grid

    def execute
      node = client.get("grids/#{current_grid}/nodes/#{node_id}")
      data = { labels: Array(node['labels']).reject {|label| label_list.include?(label) } }
      client.put("nodes/#{node['id']}", data, {}, {'Kontena-Grid-Token' => node['grid']['token']})
    end
  end
end
