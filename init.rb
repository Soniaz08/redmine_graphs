Redmine::Plugin.register :redmine_graphs do
  name 'Redmine Graphs plugin'
  description 'This is a plugin for Redmine'
  version '0.0.1'
  requires_redmine :version_or_higher => "3.0.0"

  project_module :re_graphs do
    permission :see_graphs, { :re_graphs => :index }
  end

  menu :project_menu, :redmine_graphs, { :controller => 're_graphs', :action => 'index'},
                            :caption => "graphs",
                            :after => :gantt,
                            :param => :project_id

end
