module StudentsHelper
  def icon_button
    @_controller.action_name == "edit" ? "<i class='fa fa-pencil'></i>&nbsp;&nbsp;Update".html_safe 
                                      : "<i class='fa fa-plus'></i>&nbsp;&nbsp;Add".html_safe
  end
end
